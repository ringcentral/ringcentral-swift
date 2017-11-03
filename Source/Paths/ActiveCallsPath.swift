import Foundation
import ObjectMapper
import Alamofire
open class ActiveCallsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "active-calls"
        }
    }
    /*
    */
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        The direction for the result records. It is allowed to specify more than one direction. If not specified, both inbound and outbound records are returned. Multiple values are accepted
        */
        open var `direction`: String?
        /*
        Call type of a record. It is allowed to specify more than one type. If not specified, all call types are returned. Multiple values are accepted
        */
        open var `type`: String?
        /*
        Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'.
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items). If not specified, the value is '100' by default.
        */
        open var `perPage`: Int?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(direction: String? = nil, type: String? = nil, page: Int? = nil, perPage: Int? = nil) {
            self.init()
            self.direction = `direction`
            self.type = `type`
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `direction` <- map["direction"]
            `type` <- map["type"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
    open class ListResponse: Mappable {
        /*
        List of call log records
        */
        open var `records`: [CallLogRecord]?
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
        convenience public init(records: [CallLogRecord]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
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
}
