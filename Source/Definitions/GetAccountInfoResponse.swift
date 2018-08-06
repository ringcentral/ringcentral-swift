import Foundation
import ObjectMapper
open class GetAccountInfoResponse: Mappable {
    /*
    Internal identifier of an account
    */
    open var `id`: String?
    /*
    Canonical URI of an account
    */
    open var `uri`: String?
    /*
    Main phone number of the current account
    */
    open var `mainNumber`: String?
    /*
    Operator's extension information. This extension will receive all calls and messages intended for the operator
    */
    open var `operator`: GetExtensionInfoResponse?
    /*
    Additional account identifier, developed and applied by the client
    */
    open var `partnerId`: String?
    /*
    Account service information, including brand, service plan and billing plan
    */
    open var `serviceInfo`: ServiceInfo?
    /*
    Specifies account configuration wizard state (web service setup). The default value is 'NotStarted'
    */
    open var `setupWizardState`: String?
    /*
    Status of the current account
    */
    open var `status`: String?
    /*
    Status information (reason, comment, lifetime). Returned for 'Disabled' status only
    */
    open var `statusInfo`: AccountStatusInfo?
    /*
    Account level region data (web service Auto-Receptionist settings)
    */
    open var `regionalSettings`: RegionalSettings?
    /*
    Specifies whether an account is included into any federation of accounts or not
    */
    open var `federated`: Bool?
    /*
    Customer facing identifier. Returned for accounts with the turned off PBX features. Equals to main company number in [E.164](https://www.itu.int/rec/T-REC-E.164-201011-I) (without '+' sign)format
    */
    open var `cfid`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, mainNumber: String? = nil, operator: GetExtensionInfoResponse? = nil, partnerId: String? = nil, serviceInfo: ServiceInfo? = nil, setupWizardState: String? = nil, status: String? = nil, statusInfo: AccountStatusInfo? = nil, regionalSettings: RegionalSettings? = nil, federated: Bool? = nil, cfid: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.mainNumber = `mainNumber`
        self.operator = `operator`
        self.partnerId = `partnerId`
        self.serviceInfo = `serviceInfo`
        self.setupWizardState = `setupWizardState`
        self.status = `status`
        self.statusInfo = `statusInfo`
        self.regionalSettings = `regionalSettings`
        self.federated = `federated`
        self.cfid = `cfid`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `mainNumber` <- map["mainNumber"]
        `operator` <- map["operator"]
        `partnerId` <- map["partnerId"]
        `serviceInfo` <- map["serviceInfo"]
        `setupWizardState` <- map["setupWizardState"]
        `status` <- map["status"]
        `statusInfo` <- map["statusInfo"]
        `regionalSettings` <- map["regionalSettings"]
        `federated` <- map["federated"]
        `cfid` <- map["cfid"]
    }
}
