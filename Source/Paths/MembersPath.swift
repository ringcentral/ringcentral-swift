import Foundation
import ObjectMapper
import Alamofire
open class MembersPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "members"
        }
    }
    /*
    Returns call queue group members.
    */
    open func list(callback: @escaping (_ t: CallQueueMembers?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: CallQueueMembers?, error) in
            callback(t, error)
        }
    }
    /*
    Returns call queue group members.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: CallQueueMembers?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: CallQueueMembers?, error) in
            callback(t, error)
        }
    }
    /*
    Returns call queue group members.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: CallQueueMembers?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
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
