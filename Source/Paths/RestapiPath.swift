import Foundation
import ObjectMapper
import Alamofire
open class RestapiPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "restapi"
        }
    }
    open func `status`() -> StatusPath {
        return StatusPath(parent: self)
    }
    open func `account`(_ _id: String? = "~") -> AccountPath {
        return AccountPath(parent: self, _id: _id)
    }
    open func `dictionary`() -> DictionaryPath {
        return DictionaryPath(parent: self)
    }
    open func `glip`() -> GlipPath {
        return GlipPath(parent: self)
    }
    open func `subscription`(_ _id: String? = nil) -> SubscriptionPath {
        return SubscriptionPath(parent: self, _id: _id)
    }
    open func `clientInfo`() -> ClientInfoPath {
        return ClientInfoPath(parent: self)
    }
    open func `numberParser`() -> NumberParserPath {
        return NumberParserPath(parent: self)
    }
    /*
     <p style='font-style:italic;'>Since 1.0.0</p><p>Returns current API version(s) and server info.</p><h4>Usage Plan Group</h4><p>Light</p>
     */
    open func list(callback: @escaping (_ t: GetVersionsResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetVersionsResponse?, error) in
            callback(t, error)
        }
    }
    /*
     <p style='font-style:italic;'>Since 1.0.0</p><p>Returns current API version info by apiVersion.</p><h4>Usage Plan Group</h4><p>Light</p>
     */
    open func get(callback: @escaping (_ t: GetVersionResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetVersionResponse?, error) in
            callback(t, error)
        }
    }
}
