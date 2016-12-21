import Foundation
import ObjectMapper
import Alamofire
open class ServiceInfoPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "service-info"
        }
    }
    // Get Account Service Info
    open func get(callback: @escaping (_ t: AccountServiceInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: AccountServiceInfo?, error) in
            callback(t, error)
        }
    }
}
