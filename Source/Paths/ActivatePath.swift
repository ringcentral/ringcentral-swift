import Foundation
import ObjectMapper
import Alamofire
open class ActivatePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "activate"
        }
    }
    /*
    Activates webhooks by ID.
    */
    open func post(callback: @escaping (_ t: GlipWebhookInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GlipWebhookInfo?, error) in
            callback(t, error)
        }
    }
}
