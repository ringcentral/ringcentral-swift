import Foundation
import ObjectMapper
import Alamofire
open class RenewPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "renew"
        }
    }
    /*
    Renews an existent subscription by ID by posting request with an empty body.
    */
    open func post(callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
}
