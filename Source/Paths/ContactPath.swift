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
    Get Contact List. Returns the extension address book.
    */
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Get Contact List. Returns the extension address book.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Get Contact List. Returns the extension address book.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Phone number in E.164 (11-digits) format with or without plus '+'. Multiple values are supported
        */
        open var `phoneNumber`: String?
        /*
        If specified, only contacts whose First name or Last name start with the mentioned substring are returned. Case-insensitive
        */
        open var `startsWith`: String?
        /*
        Sorts results by the specified property. The default is 'First Name'
        */
        open var `sortBy`: String?
        /*
        Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items). If not specified, the value is '100' by default
        */
        open var `perPage`: Int?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(phoneNumber: String? = nil, startsWith: String? = nil, sortBy: String? = nil, page: Int? = nil, perPage: Int? = nil) {
            self.init()
            self.phoneNumber = `phoneNumber`
            self.startsWith = `startsWith`
            self.sortBy = `sortBy`
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `phoneNumber` <- map["phoneNumber"]
            `startsWith` <- map["startsWith"]
            `sortBy` <- map["sortBy"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
    open class ListResponse: Mappable {
        /*
        List of personal contacts from the extension address book
        */
        open var `records`: [PersonalContactInfo]?
        /*
        Information on navigation
        */
        open var `navigation`: NavigationInfo?
        /*
        Information on paging
        */
        open var `paging`: PagingInfo?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(records: [PersonalContactInfo]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
            self.init()
            self.records = `records`
            self.navigation = `navigation`
            self.paging = `paging`
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
            `navigation` <- map["navigation"]
            `paging` <- map["paging"]
        }
    }
    /*
    Create New Contact.
    */
    open func post(callback: @escaping (_ t: PersonalContactInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: PersonalContactInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Create New Contact.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: PersonalContactInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: PersonalContactInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Create New Contact.
    */
    open func post(parameters: PersonalContactInfo, callback: @escaping (_ t: PersonalContactInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    Delete Contact by ID.
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    Get Contact by ID.
    */
    open func get(callback: @escaping (_ t: PersonalContactInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: PersonalContactInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Update Contact by ID.
    */
    open func put(callback: @escaping (_ t: PersonalContactInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: PersonalContactInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Update Contact by ID.
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: PersonalContactInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: PersonalContactInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Update Contact by ID.
    */
    open func put(parameters: PersonalContactInfo, callback: @escaping (_ t: PersonalContactInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
