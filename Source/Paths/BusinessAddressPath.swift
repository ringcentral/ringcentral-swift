import Foundation
import ObjectMapper
import Alamofire
open class BusinessAddressPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "business-address"
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: GetAccountInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetAccountInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditAccounts</td><td>Viewing and updating user account info (including name, business name, address and phone number/account number)</td></tr><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func put(callback: @escaping (_ t: AccountBusinessAddressResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: AccountBusinessAddressResource?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditAccounts</td><td>Viewing and updating user account info (including name, business name, address and phone number/account number)</td></tr><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: AccountBusinessAddressResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: AccountBusinessAddressResource?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditAccounts</td><td>Viewing and updating user account info (including name, business name, address and phone number/account number)</td></tr><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func put(parameters: ModifyAccountBusinessAddressRequest, callback: @escaping (_ t: AccountBusinessAddressResource?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
