import Foundation
import ObjectMapper
open class ExtensionCreationRequest: Mappable {
    /*
    Contact Information
    */
    open var `contact`: ContactInfoUpdateRequest?
    /*
    Number of extension
    */
    open var `extensionNumber`: String?
    /*
    Password for extension. If not specified, the password is auto-generated
    */
    open var `password`: String?
    /*
    List of non-RC internal identifiers assigned to an extension
    */
    open var `references`: [ReferenceInfo]?
    /*
    Extension region data (timezone, home country, language)
    */
    open var `regionalSettings`: RegionalSettings?
    /*
    Specifies extension configuration wizard state (web service setup). The default value is 'NotStarted' = ['NotStarted', 'Incomplete', 'Completed']
    */
    open var `setupWizardState`: String?
    /*
    Extension current state = ['Enabled', 'Disabled', 'NotActivated', 'Unassigned']
    */
    open var `status`: String?
    /*
    Status information (reason, comment). For 'Disabled' status only
    */
    open var `statusInfo`: ExtensionStatusInfo?
    /*
    Extension type = ['User', 'VirtualUser', 'DigitalUser', 'Department']
    */
    open var `type`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(contact: ContactInfoUpdateRequest? = nil, extensionNumber: String? = nil, password: String? = nil, references: [ReferenceInfo]? = nil, regionalSettings: RegionalSettings? = nil, setupWizardState: String? = nil, status: String? = nil, statusInfo: ExtensionStatusInfo? = nil, type: String? = nil) {
        self.init()
        self.contact = `contact`
        self.extensionNumber = `extensionNumber`
        self.password = `password`
        self.references = `references`
        self.regionalSettings = `regionalSettings`
        self.setupWizardState = `setupWizardState`
        self.status = `status`
        self.statusInfo = `statusInfo`
        self.type = `type`
    }
    open func mapping(map: Map) {
        `contact` <- map["contact"]
        `extensionNumber` <- map["extensionNumber"]
        `password` <- map["password"]
        `references` <- map["references"]
        `regionalSettings` <- map["regionalSettings"]
        `setupWizardState` <- map["setupWizardState"]
        `status` <- map["status"]
        `statusInfo` <- map["statusInfo"]
        `type` <- map["type"]
    }
}
