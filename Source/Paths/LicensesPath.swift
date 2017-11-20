import Foundation
import ObjectMapper
import Alamofire
open class LicensesPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "licenses"
        }
    }
    open func `bulkPurchase`() -> BulkPurchasePath {
        return BulkPurchasePath(parent: self)
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Returns list of licenses for a specific user.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func list(callback: @escaping (_ t: LicenseList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: LicenseList?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Returns list of licenses for a specific user.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: LicenseList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: LicenseList?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Returns list of licenses for a specific user.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: LicenseList?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Indicates the page number to retrieve. Only positive number values are allowed. The default value is '1'
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items). If not specified, the value is '25' by default
        */
        open var `perPage`: Int?
        /*
        Internal identifier of a license type. If not specified account licenses of all types are returned
        */
        open var `typeId`: Int?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(page: Int? = nil, perPage: Int? = nil, typeId: Int? = nil) {
            self.init()
            self.page = `page`
            self.perPage = `perPage`
            self.typeId = `typeId`
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `typeId` <- map["typeId"]
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Returns license information by its ID.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: LicenseInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: LicenseInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Removes a license for a specific user. Please note: It is not allowed to remove assigned licenses (only Webinars and Large Meetings can be assigned).</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr><tr><td class='code'>EditExtensions</td><td>Viewing and updating user extension info (includes extension name, number, email and phone number, assigned phone numbers, devices and other extension settings)</td></tr><tr><td class='code'>EditAccounts</td><td>Viewing and updating user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
