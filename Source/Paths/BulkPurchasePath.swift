import Foundation
import ObjectMapper
import Alamofire
open class BulkPurchasePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "bulk-purchase"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Purchases licenses for add-on features: Rooms, Room Connector, Webinar, Live Reports, etc.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr><tr><td class='code'>EditExtensions</td><td>Viewing and updating user extension info (includes extension name, number, email and phone number, assigned phone numbers, devices and other extension settings)</td></tr><tr><td class='code'>EditAccounts</td><td>Viewing and updating user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Heavy</p>
    */
    open func post(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Purchases licenses for add-on features: Rooms, Room Connector, Webinar, Live Reports, etc.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr><tr><td class='code'>EditExtensions</td><td>Viewing and updating user extension info (includes extension name, number, email and phone number, assigned phone numbers, devices and other extension settings)</td></tr><tr><td class='code'>EditAccounts</td><td>Viewing and updating user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Heavy</p>
    */
    open func post(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Purchases licenses for add-on features: Rooms, Room Connector, Webinar, Live Reports, etc.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr><tr><td class='code'>EditExtensions</td><td>Viewing and updating user extension info (includes extension name, number, email and phone number, assigned phone numbers, devices and other extension settings)</td></tr><tr><td class='code'>EditAccounts</td><td>Viewing and updating user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Heavy</p>
    */
    open func post(parameters: OrderLicensesRequest, callback: @escaping (_ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
