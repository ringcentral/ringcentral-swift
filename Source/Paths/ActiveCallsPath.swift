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
    Returns records of all extension calls that are in progress, ordered by start time in descending order.
    */
    open func list(callback: @escaping (_ t: ActiveCallsResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ActiveCallsResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns records of all extension calls that are in progress, ordered by start time in descending order.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: ActiveCallsResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ActiveCallsResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns records of all extension calls that are in progress, ordered by start time in descending order.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: ActiveCallsResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        The direction for the result records. If not specified, both inbound and outbound records are returned. Multiple values are accepted
        */
        open var `direction`: [String]?
        /*
        */
        open var `view`: String?
        /*
        Call type of a record. If not specified, all call types are returned. Multiple values are accepted
        */
        open var `type`: [String]?
        /*
        Indicates the page number to retrieve. Only positive number values are allowed
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items)
        */
        open var `perPage`: Int?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(direction: [String]? = nil, view: String? = nil, type: [String]? = nil, page: Int? = nil, perPage: Int? = nil) {
            self.init()
            self.direction = `direction`
            self.view = `view`
            self.type = `type`
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `direction` <- map["direction"]
            `view` <- map["view"]
            `type` <- map["type"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
}
