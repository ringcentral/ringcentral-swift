import Foundation
import ObjectMapper
import Alamofire
open class CallerIdPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "caller-id"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Returns information on an outbound caller ID of an extension.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: ExtensionCallerIdInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ExtensionCallerIdInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Updates outbound caller ID information of an extension.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func put(callback: @escaping (_ t: ExtensionCallerIdInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: ExtensionCallerIdInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Updates outbound caller ID information of an extension.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: ExtensionCallerIdInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: ExtensionCallerIdInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Updates outbound caller ID information of an extension.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func put(parameters: ExtensionCallerIdInfo, callback: @escaping (_ t: ExtensionCallerIdInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
