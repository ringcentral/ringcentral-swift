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
    Returns user personal contacts.
    */
    open func list(callback: @escaping (_ t: ContactList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ContactList?, error) in
            callback(t, error)
        }
    }
    /*
    Returns user personal contacts.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: ContactList?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ContactList?, error) in
            callback(t, error)
        }
    }
    /*
    Returns user personal contacts.
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
        Sorts results by the specified property
        */
        open var `sortBy`: [String]?
        /*
        Indicates the page number to retrieve. Only positive number values are accepted
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items)
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
    Creates personal user contact.
    */
    open func post(callback: @escaping (_ t: PersonalContactResource?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: PersonalContactResource?, error) in
            callback(t, error)
        }
    }
    /*
    Creates personal user contact.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: PersonalContactResource?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: PersonalContactResource?, error) in
            callback(t, error)
        }
    }
    /*
    Creates personal user contact.
    */
    open func post(parameters: PostParameters, callback: @escaping (_ t: PersonalContactResource?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        /*
        A country code value complying with the [ISO 3166-1 alpha-2](https://ru.wikipedia.org/wiki/ISO_3166-1_alpha-2) format. The default value is home country of the current extension
        */
        open var `dialingPlan`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(dialingPlan: String? = nil) {
            self.init()
            self.dialingPlan = `dialingPlan`
        }
        open func mapping(map: Map) {
            `dialingPlan` <- map["dialingPlan"]
        }
    }
    /*
    Returns contact(s) by ID(s). Batch request is supported.
    */
    open func get(callback: @escaping (_ t: PersonalContactResource?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: PersonalContactResource?, error) in
            callback(t, error)
        }
    }
    /*
    Updates personal contact information by contact ID(s). Batch request is supported
    */
    open func put(callback: @escaping (_ t: PersonalContactResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: PersonalContactResource?, error) in
            callback(t, error)
        }
    }
    /*
    Updates personal contact information by contact ID(s). Batch request is supported
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: PersonalContactResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: PersonalContactResource?, error) in
            callback(t, error)
        }
    }
    /*
    Updates personal contact information by contact ID(s). Batch request is supported
    */
    open func put(parameters: PutParameters, callback: @escaping (_ t: PersonalContactResource?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    open class PutParameters: Mappable {
        /*
        A country code value complying with the [ISO 3166-1 alpha-2](https://ru.wikipedia.org/wiki/ISO_3166-1_alpha-2) format. The default value is home country of the current extension
        */
        open var `dialingPlan`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(dialingPlan: String? = nil) {
            self.init()
            self.dialingPlan = `dialingPlan`
        }
        open func mapping(map: Map) {
            `dialingPlan` <- map["dialingPlan"]
        }
    }
    /*
    Deletes contact(s) by ID(s). Batch request is supported.
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
