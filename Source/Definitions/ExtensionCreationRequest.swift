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
    */
    open var `roles`: [Roles]?
    /*
    Extension region data (timezone, home country, language)
    */
    open var `regionalSettings`: RegionalSettings?
    /*
    Specifies extension configuration wizard state (web service setup).
    */
    open var `setupWizardState`: String?
    /*
    Extension current state
    */
    open var `status`: String?
    /*
    Status information (reason, comment). For 'Disabled' status only
    */
    open var `statusInfo`: ExtensionStatusInfo?
    /*
    Extension type
    */
    open var `type`: String?
    /*
    Hides extension from showing in company directory. Supported for extensions of User type only. For unassigned extensions the value is set to 'True' by default. For assigned extensions the value is set to 'False' by default
    */
    open var `hidden`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(contact: ContactInfoUpdateRequest? = nil, extensionNumber: String? = nil, password: String? = nil, references: [ReferenceInfo]? = nil, roles: [Roles]? = nil, regionalSettings: RegionalSettings? = nil, setupWizardState: String? = nil, status: String? = nil, statusInfo: ExtensionStatusInfo? = nil, type: String? = nil, hidden: Bool? = nil) {
        self.init()
        self.contact = `contact`
        self.extensionNumber = `extensionNumber`
        self.password = `password`
        self.references = `references`
        self.roles = `roles`
        self.regionalSettings = `regionalSettings`
        self.setupWizardState = `setupWizardState`
        self.status = `status`
        self.statusInfo = `statusInfo`
        self.type = `type`
        self.hidden = `hidden`
    }
    open func mapping(map: Map) {
        `contact` <- map["contact"]
        `extensionNumber` <- map["extensionNumber"]
        `password` <- map["password"]
        `references` <- map["references"]
        `roles` <- map["roles"]
        `regionalSettings` <- map["regionalSettings"]
        `setupWizardState` <- map["setupWizardState"]
        `status` <- map["status"]
        `statusInfo` <- map["statusInfo"]
        `type` <- map["type"]
        `hidden` <- map["hidden"]
    }
}
