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
    // Get User Permissions
    open func get(callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    open class GetResponse: Definition {
        // Canonical URI of an authorization profile resource
        open var `uri`: String?
        // List of user permissions granted
        open var `permissions`: [UserPermission]?
        convenience public init(uri: String? = nil, permissions: [UserPermission]? = nil) {
            self.init()
            self.uri = `uri`
            self.permissions = `permissions`
        }
        required public init?(map: Map) {
            super.init(map: map)
        }
        public override init() {
            super.init()
        }
        open override func mapping(map: Map) {
            `uri` <- map["uri"]
            `permissions` <- map["permissions"]
        }
    }
}
