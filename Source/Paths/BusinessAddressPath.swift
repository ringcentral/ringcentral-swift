import Foundation
import ObjectMapper
import Alamofire
open class BusinessAddressPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "business-address"
        }
    }
    /*
    Returns business address of a company.
    */
    open func get(callback: @escaping (_ t: GetAccountInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetAccountInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Updates the business address of a company that account is linked to. Batch request is supported.
    */
    open func put(callback: @escaping (_ t: AccountBusinessAddressResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: AccountBusinessAddressResource?, error) in
            callback(t, error)
        }
    }
    /*
    Updates the business address of a company that account is linked to. Batch request is supported.
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: AccountBusinessAddressResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: AccountBusinessAddressResource?, error) in
            callback(t, error)
        }
    }
    /*
    Updates the business address of a company that account is linked to. Batch request is supported.
    */
    open func put(parameters: ModifyAccountBusinessAddressRequest, callback: @escaping (_ t: AccountBusinessAddressResource?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
