import Foundation
import ObjectMapper
import Alamofire
open class BulkPurchasePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "bulk-purchase"
        }
    }
    /*
    Purchases licenses for add-on features: Rooms, Room Connector, Webinar, Live Reports, etc.
    */
    open func post(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    Purchases licenses for add-on features: Rooms, Room Connector, Webinar, Live Reports, etc.
    */
    open func post(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    Purchases licenses for add-on features: Rooms, Room Connector, Webinar, Live Reports, etc.
    */
    open func post(parameters: OrderLicensesRequest, callback: @escaping (_ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
