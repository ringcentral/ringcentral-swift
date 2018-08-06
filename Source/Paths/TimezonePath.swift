import Foundation
import ObjectMapper
import Alamofire
open class TimezonePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "timezone"
        }
    }
    /*
    Returns all available timezones.
    */
    open func list(callback: @escaping (_ t: GetTimezoneListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetTimezoneListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns all available timezones.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GetTimezoneListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GetTimezoneListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns all available timezones.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GetTimezoneListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Indicates the page number to retrieve. Only positive number values are accepted
        */
        open var `page`: String?
        /*
        Indicates the page size (number of items)
        */
        open var `perPage`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(page: String? = nil, perPage: String? = nil) {
            self.init()
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
    /*
    Returns the information on a certain timezone.
    */
    open func get(callback: @escaping (_ t: GetTimezoneInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetTimezoneInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the information on a certain timezone.
    */
    open func get(parameters: Parameters, callback: @escaping (_ t: GetTimezoneInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: GetTimezoneInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the information on a certain timezone.
    */
    open func get(parameters: GetParameters, callback: @escaping (_ t: GetTimezoneInfoResponse?, _ error: HTTPError?) -> Void) {
        get(parameters: parameters.toParameters(), callback: callback)
    }
    open class GetParameters: Mappable {
        /*
        Indicates the page number to retrieve. Only positive number values are accepted
        */
        open var `page`: String?
        /*
        Indicates the page size (number of items)
        */
        open var `perPage`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(page: String? = nil, perPage: String? = nil) {
            self.init()
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
}
