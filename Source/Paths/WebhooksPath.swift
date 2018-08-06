import Foundation
import ObjectMapper
import Alamofire
open class WebhooksPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "webhooks"
        }
    }
    open func `activate`() -> ActivatePath {
        return ActivatePath(parent: self)
    }
    open func `suspend`() -> SuspendPath {
        return SuspendPath(parent: self)
    }
    /*
    Create new Webhook
    */
    open func post(callback: @escaping (_ t: GlipWebhookInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GlipWebhookInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Returns webhooks which are available for the current user (by group ID).
    */
    open func list(callback: @escaping (_ t: GlipWebhookList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GlipWebhookList?, error) in
            callback(t, error)
        }
    }
    /*
    Deletes the webhook by ID.
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
