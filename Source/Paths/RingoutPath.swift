import Foundation
import ObjectMapper
import Alamofire
open class RingOutPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "ring-out"
        }
    }
    /*
    Makes a 2-leg RingOut call.
    */
    open func post(callback: @escaping (_ t: GetRingOutStatusResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GetRingOutStatusResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Makes a 2-leg RingOut call.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: GetRingOutStatusResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: GetRingOutStatusResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Makes a 2-leg RingOut call.
    */
    open func post(parameters: MakeRingOutRequest, callback: @escaping (_ t: GetRingOutStatusResponse?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    Returns the status of a 2-leg RingOut call.
    */
    open func get(callback: @escaping (_ t: GetRingOutStatusResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetRingOutStatusResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Cancels a 2-leg RingOut call.
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
