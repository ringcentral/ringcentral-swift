import Foundation
import ObjectMapper
import Alamofire
open class ContactsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "contacts"
        }
    }
    /*
    <p style='font-style:italic;'></p><p>Returns contact information on corporate users of federated accounts. Please note: 1. User, DigitalUser, VirtualUser and FaxUser types are returned as User type. 2.ApplicationExtension type is not returned. 3. Only extensions in Enabled, Disabled and NotActivated state are returned.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func list(callback: @escaping (_ t: CompanyDirectoryContacts?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: CompanyDirectoryContacts?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p>Returns contact information on corporate users of federated accounts. Please note: 1. User, DigitalUser, VirtualUser and FaxUser types are returned as User type. 2.ApplicationExtension type is not returned. 3. Only extensions in Enabled, Disabled and NotActivated state are returned.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: CompanyDirectoryContacts?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: CompanyDirectoryContacts?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p>Returns contact information on corporate users of federated accounts. Please note: 1. User, DigitalUser, VirtualUser and FaxUser types are returned as User type. 2.ApplicationExtension type is not returned. 3. Only extensions in Enabled, Disabled and NotActivated state are returned.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: CompanyDirectoryContacts?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items). The possible values are: Max, all or a numeric value. If not specified, all records are returned on one page
        */
        open var `perPage`: Int?
        /*
        If 'True' then only contacts of current account are returned, if 'False' then all contacts of all federation accounts are returned
        */
        open var `excludeFederatedContacts`: Bool?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(page: Int? = nil, perPage: Int? = nil, excludeFederatedContacts: Bool? = nil) {
            self.init()
            self.page = `page`
            self.perPage = `perPage`
            self.excludeFederatedContacts = `excludeFederatedContacts`
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `excludeFederatedContacts` <- map["excludeFederatedContacts"]
        }
    }
    /*
    <p style='font-style:italic;'></p><p>Returns contact information on a particular corporate user of a federated account.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func get(callback: @escaping (_ t: ContactInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ContactInfo?, error) in
            callback(t, error)
        }
    }
}
