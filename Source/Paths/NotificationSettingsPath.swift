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
    <p style='font-style:italic;'>Since 1.0.26 (Release 8.2)</p><p>Returns notification settings for the current extension.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: NotificationSettings?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: NotificationSettings?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.26 (Release 8.2)</p><p>Updates notification settings for the current extension.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func put(callback: @escaping (_ t: NotificationSettings?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: NotificationSettings?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.26 (Release 8.2)</p><p>Updates notification settings for the current extension.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: NotificationSettings?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: NotificationSettings?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.26 (Release 8.2)</p><p>Updates notification settings for the current extension.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func put(parameters: NotificationSettingsUpdateRequest, callback: @escaping (_ t: NotificationSettings?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
