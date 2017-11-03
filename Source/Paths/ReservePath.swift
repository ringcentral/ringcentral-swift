import Foundation
import ObjectMapper
import Alamofire
open class ReservePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "reserve"
        }
    }
    /*
    */
    open func post(callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: PostResponse?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: PostResponse?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func post(parameters: PostParameters, callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        /*
        Phone numbers to be reserved/un-reserved
        */
        open var `records`: [ReservePhoneNumber_Request_ReserveRecord]?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(records: [ReservePhoneNumber_Request_ReserveRecord]? = nil) {
            self.init()
            self.records = `records`
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
        }
    }
    open class PostResponse: Mappable {
        /*
        Phone numbers to be reserved/un-reserved
        */
        open var `records`: [ReservePhoneNumber_Response_ReserveRecord]?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(records: [ReservePhoneNumber_Response_ReserveRecord]? = nil) {
            self.init()
            self.records = `records`
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
        }
    }
}
