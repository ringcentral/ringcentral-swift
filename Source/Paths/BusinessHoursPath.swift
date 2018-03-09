import Foundation
import ObjectMapper
import Alamofire
open class BusinessHoursPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "business-hours"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.15 (Release 7.0)</p><p>Returns the extension user hours when answering rules are to be applied.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: GetUserBusinessHoursResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetUserBusinessHoursResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Updates  the extension user hours when answering rules are to be applied.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating user extension info (includes extension name, number, email and phone number, assigned phone numbers, devices and other extension settings)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func put(callback: @escaping (_ t: UserBusinessHoursUpdate?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: UserBusinessHoursUpdate?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Updates  the extension user hours when answering rules are to be applied.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating user extension info (includes extension name, number, email and phone number, assigned phone numbers, devices and other extension settings)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: UserBusinessHoursUpdate?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: UserBusinessHoursUpdate?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Updates  the extension user hours when answering rules are to be applied.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating user extension info (includes extension name, number, email and phone number, assigned phone numbers, devices and other extension settings)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func put(parameters: UserBusinessHoursUpdateRequest, callback: @escaping (_ t: UserBusinessHoursUpdate?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
