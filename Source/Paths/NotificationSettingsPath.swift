import Foundation
import ObjectMapper
import Alamofire
open class NotificationSettingsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "notification-settings"
        }
    }
    /*
    Returns notification settings for the current extension.
    */
    open func get(callback: @escaping (_ t: NotificationSettings?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: NotificationSettings?, error) in
            callback(t, error)
        }
    }
    /*
    Updates notification settings for the current extension.
    */
    open func put(callback: @escaping (_ t: NotificationSettings?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: NotificationSettings?, error) in
            callback(t, error)
        }
    }
    /*
    Updates notification settings for the current extension.
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: NotificationSettings?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: NotificationSettings?, error) in
            callback(t, error)
        }
    }
    /*
    Updates notification settings for the current extension.
    */
    open func put(parameters: NotificationSettingsUpdateRequest, callback: @escaping (_ t: NotificationSettings?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
