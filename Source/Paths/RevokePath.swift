import Foundation
import ObjectMapper
import Alamofire
open class RevokePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "revoke"
        }
    }
    // OAuth2 Revoke Token
    open func post(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // OAuth2 Revoke Token
    open func post(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    // OAuth2 Revoke Token
    open func post(parameters: PostParameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Definition {
        // Active access or refresh token to be revoked
        open var `token`: String?
        convenience public init(token: String? = nil) {
            self.init()
            self.token = `token`
        }
        required public init?(map: Map) {
            super.init(map: map)
        }
        public override init() {
            super.init()
        }
        open override func mapping(map: Map) {
            `token` <- map["token"]
        }
    }
}
