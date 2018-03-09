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
    <p style='font-style:italic;'>Since 1.0.26 (Release 8.12)</p><p>Renews an existent subscription by ID by posting request with an empty body..</p><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func get(callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
}
