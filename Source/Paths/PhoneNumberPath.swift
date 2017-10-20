import Foundation
import ObjectMapper
import Alamofire
open class PhoneNumberPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "phone-number"
        }
    }
    /*
    Get Extension Phone Numbers.
    */
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Get Extension Phone Numbers.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Get Extension Phone Numbers.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Usage type of the phone number
        */
        open var `usageType`: String?
        /*
        Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items). If not specified, the value is '100' by default
        */
        open var `perPage`: Int?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(usageType: String? = nil, page: Int? = nil, perPage: Int? = nil) {
            self.init()
            self.usageType = `usageType`
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `usageType` <- map["usageType"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
    open class ListResponse: Mappable {
        /*
        List of phone numbers
        */
        open var `records`: [PhoneNumberInfo]?
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
        convenience public init(records: [PhoneNumberInfo]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
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
    /*
    Get Phone Number by ID.
    */
    open func get(callback: @escaping (_ t: PhoneNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: PhoneNumberInfo?, error) in
            callback(t, error)
        }
    }
}
