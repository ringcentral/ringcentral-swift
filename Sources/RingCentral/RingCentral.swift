import Alamofire

public struct RingCentralOptions {
    public let clientId: String?
    public let clientSecret: String?
    public let server: String?
    public init(clientId: String?, clientSecret: String?, server: String?) {
        self.clientId = clientId
        self.clientSecret = clientSecret
        self.server = server
    }
}

public class RingCentral {
    public let options: RingCentralOptions
    public var tokenInfo: [String: Any]?
    public init(options: RingCentralOptions) {
        self.options = options
    }
    public func authorize(username: String, ext: String?, password: String, callback: (() -> Void)? = nil) {
        let parameters: Parameters = [
            "username": username,
            "extension": ext ?? "",
            "password": password,
            "grant_type": "password"
        ]
        AF.request("\(self.options.server!)/restapi/oauth/token", method: .post, parameters: parameters,
                   encoding: URLEncoding.default, headers: getBasicHeaders()).responseJSON { response in
            self.tokenInfo = response.value as? [String: Any]
            callback?()
        }
    }
    public func request(_ endpoint: String, method: HTTPMethod = .get, parameters: Parameters? = nil,
                      encoding: ParameterEncoding = JSONEncoding.default) -> DataRequest {
        let headers: HTTPHeaders = [
            "Authorization": "Bearer \(self.tokenInfo!["access_token"]!)"
        ]
        return AF.request(self.options.server! + endpoint, method: method,
                          parameters: parameters, encoding: encoding, headers: headers)
    }
    public func refresh(callback: (() -> Void)? = nil) {
        let parameters: Parameters = [
            "grant_type": "refresh_token",
            "refresh_token": self.tokenInfo!["refresh_token"]!
        ]
        AF.request("\(self.options.server!)/restapi/oauth/token", method: .post, parameters: parameters,
                   encoding: URLEncoding.default, headers: getBasicHeaders()).responseJSON { response in
            self.tokenInfo = response.value as? [String: Any]
            callback?()
        }
    }
    private func getBasicHeaders() -> HTTPHeaders {
        let base64Token = "\(self.options.clientId!):\(self.options.clientSecret!)".data(using: String.Encoding.utf8)!.base64EncodedString(options: [])
        let headers: HTTPHeaders = [
            "Authorization": "Basic \(base64Token)"
        ]
        return headers
    }
}
