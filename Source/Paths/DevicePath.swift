import Foundation
import ObjectMapper
import Alamofire
open class DevicePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "device"
        }
    }
    /*
    Returns a list of company devices.
    */
    open func list(callback: @escaping (_ t: GetAccountDevicesResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetAccountDevicesResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns a list of company devices.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GetAccountDevicesResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GetAccountDevicesResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns a list of company devices.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GetAccountDevicesResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Device serial number
        */
        open var `serial`: String?
        /*
        Device feature or multiple features supported
        */
        open var `feature`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(serial: String? = nil, feature: String? = nil) {
            self.init()
            self.serial = `serial`
            self.feature = `feature`
        }
        open func mapping(map: Map) {
            `serial` <- map["serial"]
            `feature` <- map["feature"]
        }
    }
    /*
    Returns account device(s) by their ID(s).
    */
    open func get(callback: @escaping (_ t: GetDeviceInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetDeviceInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Updates account device(s) by their ID(s).
    */
    open func put(callback: @escaping (_ t: DeviceResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: DeviceResource?, error) in
            callback(t, error)
        }
    }
    /*
    Updates account device(s) by their ID(s).
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: DeviceResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: DeviceResource?, error) in
            callback(t, error)
        }
    }
    /*
    Updates account device(s) by their ID(s).
    */
    open func put(parameters: AccountDeviceUpdate, callback: @escaping (_ t: DeviceResource?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
