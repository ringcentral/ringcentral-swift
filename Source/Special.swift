//
//  Special.swift
//  RingCentral
//
//  Created by Tyler Liu on 10/18/16.
//
//

import Alamofire
import ObjectMapper


// We need to map integer IDs to string IDs
struct StringTransform: TransformType {
    func transformFromJSON(_ value: Any?) -> String? {
        if value == nil {
            return ""
        } else {
            return "\(value!)"
        }
    }

    func transformToJSON(_ value: String?) -> Any? {
        return value
    }
}


// MMS
extension ExtensionPath {
    open func mms() -> MmsPath {
        return MmsPath(parent: self)
    }
}
open class MmsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "sms"
        }
    }
    func post(requestBody: Data, attachments: [Attachment], callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        var headers: [String: String] = [:]
        if rc.token != nil {
            headers["Authorization"] = "Bearer \(rc.token!.access_token!)"
        }
        Alamofire.upload(
            multipartFormData: { multipartFormData in
                multipartFormData.append(requestBody, withName: "json", fileName: "request.json", mimeType: "application/json")
                for attachment in attachments {
                    multipartFormData.append(attachment.data, withName: "attachment", fileName: attachment.fileName, mimeType: attachment.contentType)
                }
        },
            to: self.url(withId: false),
            headers: headers,
            encodingCompletion: { encodingResult in
                switch encodingResult {
                case .success(let upload, _, _):
                    upload.responseString { response in
                        if 200 == response.response!.statusCode {
                            callback(GetMessageInfoResponse(JSONString: response.result.value!), nil)
                        } else {
                            callback(nil, HTTPError(statusCode: response.response!.statusCode, message: response.result.value!))
                        }
                    }
                case .failure(_):
                    callback(nil, HTTPError(statusCode: -1, message: "error encoding multipartFormData"))
                }
        }
        )
    }
    open func post(parameters: Parameters, attachments: [Attachment], callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        let requestBody = try! JSONSerialization.data(withJSONObject: parameters)
        post(requestBody: requestBody, attachments: attachments, callback: callback)
    }
    open func post(parameters: CreateSMSMessage, attachments: [Attachment], callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        let parametersBody = parameters.toParameters()["json-string"] as! String
        let requestBody = parametersBody.data(using: String.Encoding.utf8)!
        post(requestBody: requestBody, attachments: attachments, callback: callback)
    }
}



// fax
public struct Attachment {
    var fileName: String
    var contentType: String
    var data: Data
    public init(fileName: String, contentType: String, data: Data) {
        self.fileName = fileName
        self.contentType = contentType
        self.data = data
    }
}
extension FaxPath {
    func post(requestBody: Data, attachments: [Attachment], callback: @escaping (_ t: FaxResponse?, _ error: HTTPError?) -> Void) {
        var headers: [String: String] = [:]
        if rc.token != nil {
            headers["Authorization"] = "Bearer \(rc.token!.access_token!)"
        }
        Alamofire.upload(
            multipartFormData: { multipartFormData in
                multipartFormData.append(requestBody, withName: "json", fileName: "request.json", mimeType: "application/json")
                for attachment in attachments {
                    multipartFormData.append(attachment.data, withName: "attachment", fileName: attachment.fileName, mimeType: attachment.contentType)
                }
            },
            to: self.url(withId: false),
            headers: headers,
            encodingCompletion: { encodingResult in
                switch encodingResult {
                case .success(let upload, _, _):
                    upload.responseString { response in
                        if 200 == response.response!.statusCode {
                            callback(FaxResponse(JSONString: response.result.value!), nil)
                        } else {
                            callback(nil, HTTPError(statusCode: response.response!.statusCode, message: response.result.value!))
                        }
                    }
                case .failure(_):
                    callback(nil, HTTPError(statusCode: -1, message: "error encoding multipartFormData"))
                }
            }
        )
    }
    open func post(parameters: Parameters, attachments: [Attachment], callback: @escaping (_ t: FaxResponse?, _ error: HTTPError?) -> Void) {
        let requestBody = try! JSONSerialization.data(withJSONObject: parameters)
        post(requestBody: requestBody, attachments: attachments, callback: callback)
    }
}


// upload profile image
extension ProfileImagePath {
    open func put(imageData: Data, imageFileName: String, callback: @escaping (_ error: HTTPError?) -> Void) {
        var headers: [String: String] = [:]
        if rc.token != nil {
            headers["Authorization"] = "Bearer \(rc.token!.access_token!)"
        }
        let ext = URL(fileURLWithPath: imageFileName).pathExtension
        Alamofire.upload(
            multipartFormData: { multipartFormData in
                multipartFormData.append(imageData, withName: "image", fileName: imageFileName, mimeType: "image/\(ext)")
            },
            to: self.url(withId: false),
            headers: headers,
            encodingCompletion: { encodingResult in
                switch encodingResult {
                case .success(let upload, _, _):
                    upload.responseString { response in
                        if 204 == response.response!.statusCode {
                            callback(nil)
                        } else {
                            callback(HTTPError(statusCode: response.response!.statusCode, message: response.result.value!))
                        }
                    }
                case .failure(_):
                    callback(HTTPError(statusCode: -1, message: "error encoding multipartFormData"))
                }
            }
        )
    }

    open func post(imageData: Data, imageFileName: String, callback: @escaping (_ error: HTTPError?) -> Void) {
        put(imageData: imageData, imageFileName: imageFileName, callback: callback)
    }
}


open class Notification: Mappable {
    open var event: String?
    open var json: String?
    required public init?(map: Map) {
    }

    convenience public init?(json: String) {
        self.init(JSONString: json)
        self.json = json
    }

    open func mapping(map: Map) {
        event <- map["event"]
    }
}
