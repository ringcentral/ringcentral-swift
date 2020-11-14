import Alamofire

struct RingCentralOptions {
    var clientId: String?
    var clientSecret: String?
    var server: String?
}

struct RingCentral {
    let options: RingCentralOptions
    init(options: RingCentralOptions) {
        self.options = options
    }
    func authorize(username: String, ext: String?, password: String, callback: (() -> Void)? = nil) {
        let parameters: Parameters = [
            "username": username,
            "extension": ext ?? "",
            "password": password,
            "grant_type": "password"
        ]
        let base64Token = "\(self.options.clientId!):\(self.options.clientSecret!)".data(using: String.Encoding.utf8)!.base64EncodedString(options: [])
        let headers: HTTPHeaders = [
            "Authorization": "Basic \(base64Token)"
        ]
        AF.request("\(self.options.server!)/restapi/oauth/token", method: .post, parameters: parameters, encoding: URLEncoding.default, headers: headers).response { response in
            debugPrint(response)
            callback?()
        }
    }
}
