import Foundation
import ObjectMapper
open class ExtensionUpdateRequest: Mappable {
    /*
    */
    open var `status`: String?
    /*
    */
    open var `statusInfo`: ExtensionStatusInfo?
    /*
    Type of suspension
    */
    open var `reason`: String?
    /*
    Free Form user comment
    */
    open var `comment`: String?
    /*
    Extension number available
    */
    open var `extensionNumber`: String?
    /*
    */
    open var `contact`: ContactInfoUpdateRequest?
    /*
    */
    open var `regionalSettings`: ExtensionRegionalSettingRequest?
    /*
    */
    open var `setupWizardState`: String?
    /*
    Extension partner identifier
    */
    open var `partnerId`: String?
    /*
    IVR PIN
    */
    open var `ivrPin`: String?
    /*
    Password for extension
    */
    open var `password`: String?
    /*
    For Department extension type only. Call queue settings
    */
    open var `callQueueInfo`: CallQueueInfoRequest?
    /*
    */
    open var `transition`: [UserTransitionInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(status: String? = nil, statusInfo: ExtensionStatusInfo? = nil, reason: String? = nil, comment: String? = nil, extensionNumber: String? = nil, contact: ContactInfoUpdateRequest? = nil, regionalSettings: ExtensionRegionalSettingRequest? = nil, setupWizardState: String? = nil, partnerId: String? = nil, ivrPin: String? = nil, password: String? = nil, callQueueInfo: CallQueueInfoRequest? = nil, transition: [UserTransitionInfo]? = nil) {
        self.init()
        self.status = `status`
        self.statusInfo = `statusInfo`
        self.reason = `reason`
        self.comment = `comment`
        self.extensionNumber = `extensionNumber`
        self.contact = `contact`
        self.regionalSettings = `regionalSettings`
        self.setupWizardState = `setupWizardState`
        self.partnerId = `partnerId`
        self.ivrPin = `ivrPin`
        self.password = `password`
        self.callQueueInfo = `callQueueInfo`
        self.transition = `transition`
    }
    open func mapping(map: Map) {
        `status` <- map["status"]
        `statusInfo` <- map["statusInfo"]
        `reason` <- map["reason"]
        `comment` <- map["comment"]
        `extensionNumber` <- map["extensionNumber"]
        `contact` <- map["contact"]
        `regionalSettings` <- map["regionalSettings"]
        `setupWizardState` <- map["setupWizardState"]
        `partnerId` <- map["partnerId"]
        `ivrPin` <- map["ivrPin"]
        `password` <- map["password"]
        `callQueueInfo` <- map["callQueueInfo"]
        `transition` <- map["transition"]
    }
}
