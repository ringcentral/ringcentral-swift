import Foundation
import ObjectMapper
import Alamofire
open class RestapiPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "restapi"
        }
    }
    open func `oauth`() -> OauthPath {
        return OauthPath(parent: self)
    }
    open func `account`(_ _id: String? = "~") -> AccountPath {
        return AccountPath(parent: self, _id: _id)
    }
    open func `clientInfo`() -> ClientInfoPath {
        return ClientInfoPath(parent: self)
    }
    open func `dictionary`() -> DictionaryPath {
        return DictionaryPath(parent: self)
    }
    open func `glip`() -> GlipPath {
        return GlipPath(parent: self)
    }
    open func `numberParser`() -> NumberParserPath {
        return NumberParserPath(parent: self)
    }
    open func `numberPool`() -> NumberPoolPath {
        return NumberPoolPath(parent: self)
    }
    open func `subscription`(_ _id: String? = nil) -> SubscriptionPath {
        return SubscriptionPath(parent: self, _id: _id)
    }
    // Get Server Info
    open func list(callback: @escaping (_ t: ServerInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ServerInfo?, error) in
            callback(t, error)
        }
    }
    // Get API Version Info
    open func get(callback: @escaping (_ t: VersionInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: VersionInfo?, error) in
            callback(t, error)
        }
    }
}
