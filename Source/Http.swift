//
//  Http.swift
//
//
//  Created by Tyler Liu on 8/27/16.
//
//

import Foundation
import Alamofire
import ObjectMapper


public struct HTTPError {
    public var statusCode: Int
    public var message: String
}


public struct MyJSONEncoding: ParameterEncoding {

    public static var `default`: MyJSONEncoding { return MyJSONEncoding() }
    private var delegate: JSONEncoding = JSONEncoding.default

    public init() {
    }

    public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest {
        var urlRequest = try urlRequest.asURLRequest()
        guard let parameters = parameters else { return urlRequest }
        if let jsonString = parameters["json-string"] {
            urlRequest.httpBody = (jsonString as! String).data(using: String.Encoding.utf8)!
            if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            }
            return urlRequest
        }

        // delegate to JSONEncoding
        return try delegate.encode(urlRequest, with: parameters)
    }
}


public struct MyURLEncoding: ParameterEncoding {

    public static var `default`: MyURLEncoding { return MyURLEncoding() }
    private var delegate: URLEncoding = URLEncoding.default

    public init() {
    }

    public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest {
        let urlRequest = try urlRequest.asURLRequest()
        guard let parameters = parameters else { return urlRequest }
        var myParameters: Parameters = parameters
        if let json = parameters["json-string"] as? String {
            myParameters = try JSONSerialization.jsonObject(with: json.data(using: String.Encoding.utf8)!, options: []) as! Parameters
        }

        // convert Bool to String: https://github.com/Alamofire/Alamofire/issues/1056
        for (key, value) in myParameters {
            let type = String(describing: Swift.type(of: value))
            if type == "Bool" || type == "__NSCFBoolean" {
                let bool = value as! Bool
                if bool == true {
                    myParameters[key] = "true"
                } else {
                    myParameters[key] = "false"
                }
            }
        }

        // delegate to URLEncoding
        return try delegate.encode(urlRequest, with: myParameters)
    }

}


extension RestClient {

    // create a new Alamofire request object
    func newRequest(_ endpoint: String, method: HTTPMethod, parameters: Parameters? = nil, encoding: ParameterEncoding = MyURLEncoding.default, headers: HTTPHeaders? = nil) -> DataRequest {
        let urlString = URL(string: server)!.appendingPathComponent(endpoint).absoluteString
        var headers = headers ?? [:]
        if token != nil && headers["Authorization"] == nil {
            headers["Authorization"] = "Bearer \(token!.access_token!)"
        }
        let userAgentHeader = "RC-SWIFT-SDK"
        headers["User-Agent"] = userAgentHeader
        headers["RC-User-Agent"] = userAgentHeader
        let request = Alamofire.request(urlString, method: method, parameters: parameters, encoding: encoding, headers: headers)
        return request
    }

    // request Data
    open func requestData(_ endpoint: String, method: HTTPMethod, parameters: Parameters? = nil, encoding: ParameterEncoding = MyURLEncoding.default, headers: HTTPHeaders? = nil, callback: @escaping (_ data: Data?, _ error: HTTPError?) -> Void) {
        let request = newRequest(endpoint, method: method, parameters: parameters, encoding: encoding, headers: headers)
        request.responseData { response in
            let statusCode = response.response!.statusCode
            if statusCode >= 200 && statusCode < 300 {
                callback(response.result.value!, nil)
            } else {
                callback(nil, HTTPError(statusCode: statusCode, message: ""))
            }
        }
    }

    // request String
    open func requestString(_ endpoint: String, method: HTTPMethod, parameters: Parameters? = nil, encoding: ParameterEncoding = MyURLEncoding.default, headers: HTTPHeaders? = nil, callback: @escaping (_ string: String?, _ error: HTTPError?) -> Void) {
        let request = newRequest(endpoint, method: method, parameters: parameters, encoding: encoding, headers: headers)
        request.responseString { response in
            let statusCode = response.response!.statusCode
            if statusCode >= 200 && statusCode < 300 {
                callback(response.result.value!, nil)
            } else {
                callback(nil, HTTPError(statusCode: statusCode, message: response.result.value!))
            }
        }
    }
    open func getString(_ endpoint: String, parameters: Parameters? = nil, encoding: ParameterEncoding = MyURLEncoding.default, headers: HTTPHeaders? = nil, callback: @escaping (_ string: String?, _ error: HTTPError?) -> Void) {
        requestString(endpoint, method: .get, parameters: parameters, encoding: encoding, headers: headers, callback: callback)
    }
    open func postString(_ endpoint: String, parameters: Parameters? = nil, encoding: ParameterEncoding = MyJSONEncoding.default, headers: HTTPHeaders? = nil, callback: @escaping (_ string: String?, _ error: HTTPError?) -> Void) {
        requestString(endpoint, method: .post, parameters: parameters, encoding: encoding, headers: headers, callback: callback)
    }
    open func putString(_ endpoint: String, parameters: Parameters? = nil, encoding: ParameterEncoding = MyJSONEncoding.default, headers: HTTPHeaders? = nil, callback: @escaping (_ string: String?, _ error: HTTPError?) -> Void) {
        requestString(endpoint, method: .put, parameters: parameters, encoding: encoding, headers: headers, callback: callback)
    }
    open func deleteString(_ endpoint: String, parameters: Parameters? = nil, encoding: ParameterEncoding = MyURLEncoding.default, headers: HTTPHeaders? = nil, callback: @escaping (_ string: String?, _ error: HTTPError?) -> Void) {
        requestString(endpoint, method: .delete, parameters: parameters, encoding: encoding, headers: headers, callback: callback)
    }

    // request model
    open func request<T: Mappable>(_ endpoint: String, method: HTTPMethod, parameters: Parameters? = nil, encoding: ParameterEncoding = MyURLEncoding.default, headers: HTTPHeaders? = nil, callback: @escaping (_ t: T?, _ error: HTTPError?) -> Void) {
        if T.self == Binary.self { // download binary data
            requestData(endpoint, method: method, parameters: parameters, encoding: encoding, headers: headers) { data, error in
                if error != nil {
                    callback(nil, error)
                } else {
                    callback(Binary(data: data) as? T, nil)
                }
            }
        } else {
            requestString(endpoint, method: method, parameters: parameters, encoding: encoding, headers: headers) { string, error in
                if error != nil {
                    callback(nil, error)
                } else {
                    callback(T(JSONString: string!), nil)
                }
            }
        }
    }
    open func get<T: Mappable>(_ endpoint: String, parameters: Parameters? = nil, encoding: ParameterEncoding = MyURLEncoding.default, headers: HTTPHeaders? = nil, callback: @escaping (_ t: T?, _ error: HTTPError?) -> Void) {
        request(endpoint, method: .get, parameters: parameters, encoding: encoding, headers: headers, callback: callback)
    }
    open func post<T: Mappable>(_ endpoint: String, parameters: Parameters? = nil, encoding: ParameterEncoding = MyJSONEncoding.default, headers: HTTPHeaders? = nil, callback: @escaping (_ t: T?, _ error: HTTPError?) -> Void) {
        request(endpoint, method: .post, parameters: parameters, encoding: encoding, headers: headers, callback: callback)
    }
    open func put<T: Mappable>(_ endpoint: String, parameters: Parameters? = nil, encoding: ParameterEncoding = MyJSONEncoding.default, headers: HTTPHeaders? = nil, callback: @escaping (_ t: T?, _ error: HTTPError?) -> Void) {
        request(endpoint, method: .put, parameters: parameters, encoding: encoding, headers: headers, callback: callback)
    }
    open func delete<T: Mappable>(_ endpoint: String, parameters: Parameters? = nil, encoding: ParameterEncoding = MyURLEncoding.default, headers: HTTPHeaders? = nil, callback: @escaping (_ t: T?, _ error: HTTPError?) -> Void) {
        request(endpoint, method: .delete, parameters: parameters, encoding: encoding, headers: headers, callback: callback)
    }

}
