import Foundation
import ObjectMapper
import Alamofire
open class BotPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "bot"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.32 (Release 9.3)</p><p>Creates a bot extension. Please note: Bot extension is always created in Enabled status, no welcome email is sent.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditAccounts</td><td>Viewing and updating user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func post(callback: @escaping (_ t: BotExtensionCreation?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: BotExtensionCreation?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.32 (Release 9.3)</p><p>Creates a bot extension. Please note: Bot extension is always created in Enabled status, no welcome email is sent.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditAccounts</td><td>Viewing and updating user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: BotExtensionCreation?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: BotExtensionCreation?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.32 (Release 9.3)</p><p>Creates a bot extension. Please note: Bot extension is always created in Enabled status, no welcome email is sent.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditAccounts</td><td>Viewing and updating user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func post(parameters: BotExtensionCreationRequest, callback: @escaping (_ t: BotExtensionCreation?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
