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
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns all the available locations for the certain state.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(callback: @escaping (_ t: GetLocationListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetLocationListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns all the available locations for the certain state.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GetLocationListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GetLocationListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns all the available locations for the certain state.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GetLocationListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Sorts results by the specified property. The default value is 'City'
        */
        open var `orderBy`: [String]?
        /*
        Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'.
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items). If not specified, the value is '100' by default.
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
