import Foundation
import ObjectMapper
import Alamofire
open class StatePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "state"
        }
    }
    /*
    Returns all the states of a certain country
    */
    open func list(callback: @escaping (_ t: GetStateListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetStateListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns all the states of a certain country
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GetStateListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GetStateListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns all the states of a certain country
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GetStateListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Internal identifier of a country
        */
        open var `countryId`: Int?
        /*
        Indicates the page number to retrieve. Only positive number values are accepted
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items)
        */
        open var `perPage`: Int?
        /*
        If 'True', the list of states with phone numbers available for buying is returned
        */
        open var `withPhoneNumbers`: Bool?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(countryId: Int? = nil, page: Int? = nil, perPage: Int? = nil, withPhoneNumbers: Bool? = nil) {
            self.init()
            self.countryId = `countryId`
            self.page = `page`
            self.perPage = `perPage`
            self.withPhoneNumbers = `withPhoneNumbers`
        }
        open func mapping(map: Map) {
            `countryId` <- map["countryId"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `withPhoneNumbers` <- map["withPhoneNumbers"]
        }
    }
    /*
    Returns the information on a specific state.
    */
    open func get(callback: @escaping (_ t: GetStateInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetStateInfoResponse?, error) in
            callback(t, error)
        }
    }
}
