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
    Returns a list of user permissions granted at authorization procedure. Please note: Some permissions may be restricted by extension type.
    */
    open func get(callback: @escaping (_ t: AuthProfileResource?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: AuthProfileResource?, error) in
            callback(t, error)
        }
    }
}
