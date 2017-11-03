import Foundation
import ObjectMapper
import Alamofire
open class AuthzProfilePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "authz-profile"
        }
    }
    open func `check`() -> CheckPath {
        return CheckPath(parent: self)
    }
    /*
    Returns a list of user permissions granted at authorization procedure.
    */
    open func get(callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    open class GetResponse: Mappable {
        /*
        Canonical URI of an authorization profile resource
        */
        open var `uri`: String?
        /*
        List of user permissions granted
        */
        open var `permissions`: [UserPermission]?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(uri: String? = nil, permissions: [UserPermission]? = nil) {
            self.init()
            self.uri = `uri`
            self.permissions = `permissions`
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `permissions` <- map["permissions"]
        }
    }
}
