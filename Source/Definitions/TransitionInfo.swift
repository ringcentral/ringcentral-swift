import Foundation
import ObjectMapper
open class TransitionInfo: Mappable {
    /*
    Supported for account confirmation. Specifies whether welcome email is sent. The default value is 'True'
    */
    open var `sendWelcomeEmail`: Bool?
    /*
    Supported for account activation. Specifies whether confirmation email is sent. The default value is 'True'
    */
    open var `sendConfirmationEmail`: Bool?
    /*
    Specifies whether devices are shipped after successful account confirmation. The default value is 'True'
    */
    open var `shipDevices`: Bool?
    /*
    Supported for account confirmation. Activation email hash code
    */
    open var `activationEmailHash`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(sendWelcomeEmail: Bool? = nil, sendConfirmationEmail: Bool? = nil, shipDevices: Bool? = nil, activationEmailHash: String? = nil) {
        self.init()
        self.sendWelcomeEmail = `sendWelcomeEmail`
        self.sendConfirmationEmail = `sendConfirmationEmail`
        self.shipDevices = `shipDevices`
        self.activationEmailHash = `activationEmailHash`
    }
    open func mapping(map: Map) {
        `sendWelcomeEmail` <- map["sendWelcomeEmail"]
        `sendConfirmationEmail` <- map["sendConfirmationEmail"]
        `shipDevices` <- map["shipDevices"]
        `activationEmailHash` <- map["activationEmailHash"]
    }
}
