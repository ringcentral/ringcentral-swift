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
    Returns the list of extension phone numbers used for call forwarding and call flip. The returned list contains all the extension phone numbers used for call forwarding and call flip.
    */
    open func list(callback: @escaping (_ t: GetExtensionForwardingNumberListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetExtensionForwardingNumberListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the list of extension phone numbers used for call forwarding and call flip. The returned list contains all the extension phone numbers used for call forwarding and call flip.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GetExtensionForwardingNumberListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GetExtensionForwardingNumberListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the list of extension phone numbers used for call forwarding and call flip. The returned list contains all the extension phone numbers used for call forwarding and call flip.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GetExtensionForwardingNumberListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Indicates the page number to retrieve. Only positive number values are accepted.
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items).
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
    /*
    Adds a new forwarding number to the forwarding number list.
    */
    open func post(callback: @escaping (_ t: ForwardingNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: ForwardingNumberInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Adds a new forwarding number to the forwarding number list.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: ForwardingNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: ForwardingNumberInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Adds a new forwarding number to the forwarding number list.
    */
    open func post(parameters: CreateForwardingNumberRequest, callback: @escaping (_ t: ForwardingNumberInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    Returns a specific forwarding number.
    */
    open func get(callback: @escaping (_ t: ForwardingNumberResource?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ForwardingNumberResource?, error) in
            callback(t, error)
        }
    }
    /*
    Updates the existing forwarding number from the forwarding number list.
    */
    open func put(callback: @escaping (_ t: ForwardingNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: ForwardingNumberInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Updates the existing forwarding number from the forwarding number list.
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: ForwardingNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: ForwardingNumberInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Updates the existing forwarding number from the forwarding number list.
    */
    open func put(parameters: UpdateForwardingNumberRequest, callback: @escaping (_ t: ForwardingNumberInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    Deletes a forwarding number from the forwarding number list by its ID.
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
