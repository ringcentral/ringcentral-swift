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
    <p style='font-style:italic;'>Since 1.0.12 (Release 6.4)</p><p>Returns all the devices for a particular extension.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func list(callback: @escaping (_ t: GetAccountDevicesResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetAccountDevicesResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.9 (Release 6.1)</p><p>Returns account device(s) by their ID(s).</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: GetDeviceInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetDeviceInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func put(callback: @escaping (_ t: DeviceResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: DeviceResource?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: DeviceResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: DeviceResource?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func put(parameters: AccountDeviceUpdate, callback: @escaping (_ t: DeviceResource?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
