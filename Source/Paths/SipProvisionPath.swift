import Foundation
import ObjectMapper
import Alamofire
open class SipProvisionPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "sip-provision"
        }
    }
    /*
    Creates SIP registration of a device/application (WebPhone, Mobile, softphone)
    */
    open func post(callback: @escaping (_ t: CreateSipRegistrationResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: CreateSipRegistrationResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Creates SIP registration of a device/application (WebPhone, Mobile, softphone)
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: CreateSipRegistrationResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: CreateSipRegistrationResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Creates SIP registration of a device/application (WebPhone, Mobile, softphone)
    */
    open func post(parameters: CreateSipRegistrationRequest, callback: @escaping (_ t: CreateSipRegistrationResponse?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
