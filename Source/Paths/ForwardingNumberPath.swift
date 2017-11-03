import Foundation
import ObjectMapper
import Alamofire
open class ForwardingNumberPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "forwarding-number"
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
        convenience public init(page: Int? = nil, perPage: Int? = nil) {
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
        /*
        List of forwarding phone numbers
        */
        open var `records`: [ForwardingNumberInfo]?
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
        convenience public init(records: [ForwardingNumberInfo]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
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
    */
    open func post(callback: @escaping (_ t: ForwardingNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: ForwardingNumberInfo?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: ForwardingNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: ForwardingNumberInfo?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func post(parameters: PostParameters, callback: @escaping (_ t: ForwardingNumberInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        /*
        Forwarding/Call flip phone number
        */
        open var `phoneNumber`: String?
        /*
        Forwarding/Call flip number title
        */
        open var `label`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(phoneNumber: String? = nil, label: String? = nil) {
            self.init()
            self.phoneNumber = `phoneNumber`
            self.label = `label`
        }
        open func mapping(map: Map) {
            `phoneNumber` <- map["phoneNumber"]
            `label` <- map["label"]
        }
    }
}
