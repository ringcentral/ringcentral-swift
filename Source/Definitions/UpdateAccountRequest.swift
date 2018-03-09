import Foundation
import ObjectMapper
open class UpdateAccountRequest: Mappable {
    /*
    Target account status. For account activation - 'Unconfirmed'. For account confirmation - 'Confirmed'. For changing account status - 'Confirmed' or 'Disabled' = ['Unconfirmed', 'Confirmed', 'Disabled'],
    */
    open var `status`: String?
    /*
    Status information (reason, comment, lifetime). Returned for 'Disabled' status only
    */
    open var `statusInfo`: AccountStatusInfo?
    /*
    Email notifications setting
    */
    open var `transitionInfo`: TransitionInfo?
    /*
    Additional account identifier, developed and applied on the client side
    */
    open var `partnerId`: String?
    /*
    Account service information, including brand, service plan and billing plan
    */
    open var `serviceInfo`: AccountServiceInfo?
    /*
    Account level region data (web service Auto-Receptionist settings)
    */
    open var `regionalSettings`: RegionalSettings?
    /*
    Identifier of extension to be set as operator for account
    */
    open var `operatorId`: String?
    /*
    Account sign up data
    */
    open var `signupInfo`: SignupInfoResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(status: String? = nil, statusInfo: AccountStatusInfo? = nil, transitionInfo: TransitionInfo? = nil, partnerId: String? = nil, serviceInfo: AccountServiceInfo? = nil, regionalSettings: RegionalSettings? = nil, operatorId: String? = nil, signupInfo: SignupInfoResource? = nil) {
        self.init()
        self.status = `status`
        self.statusInfo = `statusInfo`
        self.transitionInfo = `transitionInfo`
        self.partnerId = `partnerId`
        self.serviceInfo = `serviceInfo`
        self.regionalSettings = `regionalSettings`
        self.operatorId = `operatorId`
        self.signupInfo = `signupInfo`
    }
    open func mapping(map: Map) {
        `status` <- map["status"]
        `statusInfo` <- map["statusInfo"]
        `transitionInfo` <- map["transitionInfo"]
        `partnerId` <- map["partnerId"]
        `serviceInfo` <- map["serviceInfo"]
        `regionalSettings` <- map["regionalSettings"]
        `operatorId` <- map["operatorId"]
        `signupInfo` <- map["signupInfo"]
    }
}
