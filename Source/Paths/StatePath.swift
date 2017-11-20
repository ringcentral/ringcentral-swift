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
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns all the states for a certain country.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(callback: @escaping (_ t: GetStateListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetStateListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns all the states for a certain country.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GetStateListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GetStateListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns all the states for a certain country.</p><h4>Usage Plan Group</h4><p>Light</p>
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
        Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'.
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items). If not specified, the value is '100' by default
        */
        open var `perPage`: Int?
        /*
        If 'True', the list of states with phone numbers available for buying is returned. The default value is 'False'
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
    <p style='font-style:italic;'>Since 1.0.10 (Release 6.2)</p><p>Returns the information on the required state.</p><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: GetStateInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetStateInfoResponse?, error) in
            callback(t, error)
        }
    }
}
