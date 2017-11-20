import Foundation
import ObjectMapper
import Alamofire
open class ContactPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "contact"
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadContacts</td><td>Viewing user personal contacts</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func list(callback: @escaping (_ t: ContactList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ContactList?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadContacts</td><td>Viewing user personal contacts</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: ContactList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ContactList?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadContacts</td><td>Viewing user personal contacts</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: ContactList?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        If specified, only contacts whose First name or Last name start with the mentioned substring are returned. Case-insensitive
        */
        open var `startsWith`: String?
        /*
        Sorts results by the specified property. The default is 'First Name'
        */
        open var `sortBy`: [String]?
        /*
        Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items). If not specified, the value is '100' by default
        */
        open var `perPage`: Int?
        /*
        */
        open var `phoneNumber`: [String]?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(startsWith: String? = nil, sortBy: [String]? = nil, page: Int? = nil, perPage: Int? = nil, phoneNumber: [String]? = nil) {
            self.init()
            self.startsWith = `startsWith`
            self.sortBy = `sortBy`
            self.page = `page`
            self.perPage = `perPage`
            self.phoneNumber = `phoneNumber`
        }
        open func mapping(map: Map) {
            `startsWith` <- map["startsWith"]
            `sortBy` <- map["sortBy"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `phoneNumber` <- map["phoneNumber"]
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Contacts</td><td>Creating, viewing, editing and deleting user personal contacts</td></tr><tr><td class='code'>ReadContacts</td><td>Viewing user personal contacts</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func post(callback: @escaping (_ t: PersonalContactResource?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: PersonalContactResource?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Contacts</td><td>Creating, viewing, editing and deleting user personal contacts</td></tr><tr><td class='code'>ReadContacts</td><td>Viewing user personal contacts</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: PersonalContactResource?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: PersonalContactResource?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Contacts</td><td>Creating, viewing, editing and deleting user personal contacts</td></tr><tr><td class='code'>ReadContacts</td><td>Viewing user personal contacts</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func post(parameters: PersonalContactResource, callback: @escaping (_ t: PersonalContactResource?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadContacts</td><td>Viewing user personal contacts</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func get(callback: @escaping (_ t: PersonalContactResource?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: PersonalContactResource?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Contacts</td><td>Creating, viewing, editing and deleting user personal contacts</td></tr><tr><td class='code'>ReadContacts</td><td>Viewing user personal contacts</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func put(callback: @escaping (_ t: PersonalContactResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: PersonalContactResource?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Contacts</td><td>Creating, viewing, editing and deleting user personal contacts</td></tr><tr><td class='code'>ReadContacts</td><td>Viewing user personal contacts</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: PersonalContactResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: PersonalContactResource?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Contacts</td><td>Creating, viewing, editing and deleting user personal contacts</td></tr><tr><td class='code'>ReadContacts</td><td>Viewing user personal contacts</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func put(parameters: PersonalContactResource, callback: @escaping (_ t: PersonalContactResource?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Contacts</td><td>Creating, viewing, editing and deleting user personal contacts</td></tr><tr><td class='code'>ReadContacts</td><td>Viewing user personal contacts</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
