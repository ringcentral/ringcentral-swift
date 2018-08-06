import Foundation
import ObjectMapper
import Alamofire
open class CallerBlockingPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "caller-blocking"
        }
    }
    open func `phoneNumbers`(_ _id: String? = nil) -> PhoneNumbersPath {
        return PhoneNumbersPath(parent: self, _id: _id)
    }
    /*
    Returns the current call blocking settings of a user.
    */
    open func get(callback: @escaping (_ t: CallerBlockingSettings?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: CallerBlockingSettings?, error) in
            callback(t, error)
        }
    }
    /*
    Updates the current call blocking settings of a user.
    */
    open func put(callback: @escaping (_ t: CallerBlockingSettings?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: CallerBlockingSettings?, error) in
            callback(t, error)
        }
    }
    /*
    Updates the current call blocking settings of a user.
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: CallerBlockingSettings?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: CallerBlockingSettings?, error) in
            callback(t, error)
        }
    }
    /*
    Updates the current call blocking settings of a user.
    */
    open func put(parameters: CallerBlockingSettingsUpdate, callback: @escaping (_ t: CallerBlockingSettings?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
