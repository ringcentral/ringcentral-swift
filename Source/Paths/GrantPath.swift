import Foundation
import ObjectMapper
import Alamofire
open class GrantPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "grant"
        }
    }
    /*
    Returns the list of extension grants.
    */
    open func list(callback: @escaping (_ t: GetExtensionGrantListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetExtensionGrantListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the list of extension grants.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GetExtensionGrantListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GetExtensionGrantListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the list of extension grants.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GetExtensionGrantListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        */
        open var `page`: String?
        /*
        */
        open var `perPage`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(page: String? = nil, perPage: String? = nil) {
            self.init()
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
}
