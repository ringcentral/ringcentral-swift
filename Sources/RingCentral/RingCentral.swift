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
    func authorize(username: String, extension: String?, password: String, callback: (() -> Void)? = nil) {
        AF.request(self.options.server! + "/restapi/v1.0").response { response in
            debugPrint(response)
            callback?()
        }
    }
}
