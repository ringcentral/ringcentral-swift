import Foundation
import ObjectMapper
import Alamofire
open class AccountInfo: Mappable {
    // Internal identifier of an account
    open var `id`: String?
    // Canonical URI of an account
    open var `uri`: String?
    // Main phone number of the current account
    open var `mainNumber`: String?
    // Operator's extension information. This extension will receive all calls and messages intended for the operator
    open var `operator`: ExtensionInfo?
    // Additional account identifier, developed and applied by the client
    open var `partnerId`: String?
    // Account service information, including brand, service plan and billing plan
    open var `serviceInfo`: Account_ServiceInfo?
    // Specifies account configuration wizard state (web service setup). The default value is 'NotStarted'
    open var `setupWizardState`: String?
    // Status of the current account
    open var `status`: String?
    // Status information (reason, comment, lifetime). Returned for 'Disabled' status only
    open var `statusInfo`: StatusInfo?
    public init() {
    }
    convenience public init(id: String? = nil, uri: String? = nil, mainNumber: String? = nil, operator: ExtensionInfo? = nil, partnerId: String? = nil, serviceInfo: Account_ServiceInfo? = nil, setupWizardState: String? = nil, status: String? = nil, statusInfo: StatusInfo? = nil) {
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
    }
    required public init?(map: Map) {
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
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
