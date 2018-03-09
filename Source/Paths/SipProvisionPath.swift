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
    <p style='font-style:italic;'>Since 1.0.16 (Release 7.1)</p><p>Creates SIP registration of a device/application (WebPhone, Mobile, softphone)</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>VoipCalling</td><td>Registering as VoIP device and making VoIP calls</td></tr></tbody></table><h4>API Group</h4><p>Heavy</p>
    */
    open func post(callback: @escaping (_ t: CreateSipRegistrationResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: CreateSipRegistrationResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.16 (Release 7.1)</p><p>Creates SIP registration of a device/application (WebPhone, Mobile, softphone)</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>VoipCalling</td><td>Registering as VoIP device and making VoIP calls</td></tr></tbody></table><h4>API Group</h4><p>Heavy</p>
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: CreateSipRegistrationResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: CreateSipRegistrationResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.16 (Release 7.1)</p><p>Creates SIP registration of a device/application (WebPhone, Mobile, softphone)</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>VoipCalling</td><td>Registering as VoIP device and making VoIP calls</td></tr></tbody></table><h4>API Group</h4><p>Heavy</p>
    */
    open func post(parameters: CreateSipRegistrationRequest, callback: @escaping (_ t: CreateSipRegistrationResponse?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
