import Foundation
import ObjectMapper
import Alamofire
open class FaxCoverPagePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "fax-cover-page"
        }
    }
    /*
    Returns fax cover pages available for the current extension.
    */
    open func get(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    Returns fax cover pages available for the current extension.
    */
    open func get(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    Returns fax cover pages available for the current extension.
    */
    open func get(parameters: GetParameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        get(parameters: parameters.toParameters(), callback: callback)
    }
    open class GetParameters: Mappable {
        /*
        Indicates the page number to retrieve. Only positive number values are accepted
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
}
