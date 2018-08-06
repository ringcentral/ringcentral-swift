import Foundation
import ObjectMapper
import Alamofire
open class CallerIdPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "caller-id"
        }
    }
    /*
    Returns information on an outbound caller ID of an extension.
    */
    open func get(callback: @escaping (_ t: ExtensionCallerIdInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ExtensionCallerIdInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Updates outbound caller ID information of an extension.
    */
    open func put(callback: @escaping (_ t: ExtensionCallerIdInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: ExtensionCallerIdInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Updates outbound caller ID information of an extension.
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: ExtensionCallerIdInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: ExtensionCallerIdInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Updates outbound caller ID information of an extension.
    */
    open func put(parameters: ExtensionCallerIdInfo, callback: @escaping (_ t: ExtensionCallerIdInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
