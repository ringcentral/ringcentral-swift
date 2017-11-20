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
    */
    open func get(callback: @escaping (_ t: AuthProfileResource?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: AuthProfileResource?, error) in
            callback(t, error)
        }
    }
}
