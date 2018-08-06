import Foundation
import ObjectMapper
import Alamofire
open class LocationPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "location"
        }
    }
    /*
    Returns all available locations for a certain state.
    */
    open func list(callback: @escaping (_ t: GetLocationListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetLocationListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns all available locations for a certain state.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GetLocationListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GetLocationListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns all available locations for a certain state.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GetLocationListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Sorts results by the property specified
        */
        open var `orderBy`: [String]?
        /*
        Indicates the page number to retrieve. Only positive number values are accepted
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items)
        */
        open var `perPage`: Int?
        /*
        Internal identifier of a state
        */
        open var `stateId`: String?
        /*
        Specifies if nxx codes are returned
        */
        open var `withNxx`: Bool?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(orderBy: [String]? = nil, page: Int? = nil, perPage: Int? = nil, stateId: String? = nil, withNxx: Bool? = nil) {
            self.init()
            self.orderBy = `orderBy`
            self.page = `page`
            self.perPage = `perPage`
            self.stateId = `stateId`
            self.withNxx = `withNxx`
        }
        open func mapping(map: Map) {
            `orderBy` <- map["orderBy"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `stateId` <- map["stateId"]
            `withNxx` <- map["withNxx"]
        }
    }
}
