import Foundation
import ObjectMapper
import Alamofire
open class StatePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "state"
        }
    }
    // Get State/Province List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get State/Province List
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get State/Province List
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Definition {
        // Internal identifier of a country
        open var `countryId`: Int?
        // Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'.
        open var `page`: Int?
        // Indicates the page size (number of items). If not specified, the value is '100' by default
        open var `perPage`: Int?
        // If 'True', the list of states with phone numbers available for buying is returned. The default value is 'False'
        open var `withPhoneNumbers`: Bool?
        convenience public init(countryId: Int? = nil, page: Int? = nil, perPage: Int? = nil, withPhoneNumbers: Bool? = nil) {
            self.init()
            self.countryId = `countryId`
            self.page = `page`
            self.perPage = `perPage`
            self.withPhoneNumbers = `withPhoneNumbers`
        }
        required public init?(map: Map) {
            super.init(map: map)
        }
        public override init() {
            super.init()
        }
        open override func mapping(map: Map) {
            `countryId` <- map["countryId"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `withPhoneNumbers` <- map["withPhoneNumbers"]
        }
    }
    open class ListResponse: Definition {
        // List of states
        open var `records`: [StateInfo]?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        // Information on paging
        open var `paging`: PagingInfo?
        convenience public init(records: [StateInfo]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
            self.init()
            self.records = `records`
            self.navigation = `navigation`
            self.paging = `paging`
        }
        required public init?(map: Map) {
            super.init(map: map)
        }
        public override init() {
            super.init()
        }
        open override func mapping(map: Map) {
            `records` <- map["records"]
            `navigation` <- map["navigation"]
            `paging` <- map["paging"]
        }
    }
    // Get State/Province by ID
    open func get(callback: @escaping (_ t: StateInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: StateInfo?, error) in
            callback(t, error)
        }
    }
}
