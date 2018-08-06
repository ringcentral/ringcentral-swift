import Foundation
import ObjectMapper
import Alamofire
open class ServiceProviderConfigPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "ServiceProviderConfig"
        }
    }
    /*
    */
    open func get(callback: @escaping (_ t: ServiceProviderConfig?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ServiceProviderConfig?, error) in
            callback(t, error)
        }
    }
}
