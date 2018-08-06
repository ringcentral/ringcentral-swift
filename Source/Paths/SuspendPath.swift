import Foundation
import ObjectMapper
import Alamofire
open class SuspendPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "suspend"
        }
    }
    /*
    Suspends webhooks by ID.
    */
    open func post(callback: @escaping (_ t: GlipWebhookInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GlipWebhookInfo?, error) in
            callback(t, error)
        }
    }
}
