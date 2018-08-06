import Foundation
import ObjectMapper
import Alamofire
open class FederationPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "federation"
        }
    }
    /*
    Returns information on a federation and associated accounts.
    */
    open func get(callback: @escaping (_ t: FederationResource?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: FederationResource?, error) in
            callback(t, error)
        }
    }
}
