import Foundation
import ObjectMapper
import Alamofire
open class TimezonePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "timezone"
        }
    }
    // Get Time Zone List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Time Zone List
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Time Zone List
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        // Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        open var `page`: String?
        // Indicates the page size (number of items). If not specified, the value is '100' by default
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
    open class ListResponse: Mappable {
        // List of timezones
        open var `records`: [TimezoneInfo]?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        // Information on paging
        open var `paging`: PagingInfo?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(records: [TimezoneInfo]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
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
    // Get Time Zone by ID
    open func get(callback: @escaping (_ t: TimezoneInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: TimezoneInfo?, error) in
            callback(t, error)
        }
    }
}
