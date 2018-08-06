import Foundation
import ObjectMapper
import Alamofire
open class BusinessHoursPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "business-hours"
        }
    }
    /*
    Returns the extension user hours when answering rules are to be applied.
    */
    open func get(callback: @escaping (_ t: GetUserBusinessHoursResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetUserBusinessHoursResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Updates the extension user hours when answering rules are to be applied.
    */
    open func put(callback: @escaping (_ t: UserBusinessHoursUpdate?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: UserBusinessHoursUpdate?, error) in
            callback(t, error)
        }
    }
    /*
    Updates the extension user hours when answering rules are to be applied.
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: UserBusinessHoursUpdate?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: UserBusinessHoursUpdate?, error) in
            callback(t, error)
        }
    }
    /*
    Updates the extension user hours when answering rules are to be applied.
    */
    open func put(parameters: UserBusinessHoursUpdateRequest, callback: @escaping (_ t: UserBusinessHoursUpdate?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
