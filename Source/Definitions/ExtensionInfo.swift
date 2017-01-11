import Foundation
import ObjectMapper
open class ExtensionInfo: Mappable {
    // Internal identifier of an extension
    open var `id`: String?
    // Canonical URI of an extension
    open var `uri`: String?
    // Contact detailed information
    open var `contact`: ContactInfo?
    // Information on department extension(s), to which the requested extension belongs. Returned only for user extensions, members of department, requested by single extensionId
    open var `departments`: [DepartmentInfo]?
    // Number of department extension
    open var `extensionNumber`: String?
    // Extension user name
    open var `name`: String?
    // For Partner Applications Internal identifier of an extension created by partner. The RingCentral supports the mapping of accounts and stores the corresponding account ID/extension ID for each partner ID of a client application. In request URIs partner IDs are accepted instead of regular RingCentral native IDs as path parameters using pid = XXX clause. Though in response URIs contain the corresponding account IDs and extension IDs. In all request and response bodies these values are reflected via partnerId attributes of account and extension
    open var `partnerId`: String?
    // Extension permissions, corresponding to the Service Web permissions 'Admin' and 'InternationalCalling'
    open var `permissions`: ExtensionPermissions?
    // Information on profile image
    open var `profileImage`: ProfileImageInfo?
    // List of non-RC internal identifiers assigned to an extension
    open var `references`: [ReferenceInfo]?
    // Extension region data (timezone, home country, language)
    open var `regionalSettings`: RegionalSettings?
    // Extension service features returned in response only when the logged-in user requests his/her own extension info, see also Extension Service Features
    open var `serviceFeatures`: [ExtensionServiceFeatureInfo]?
    // Specifies extension configuration wizard state (web service setup). The default value is 'NotStarted'
    open var `setupWizardState`: String?
    // Extension current state. If the status is 'Unassigned'. Returned for all extensions
    open var `status`: String?
    // Status information (reason, comment). Returned for 'Disabled' status only
    open var `statusInfo`: StatusInfo?
    // Extension type
    open var `type`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, contact: ContactInfo? = nil, departments: [DepartmentInfo]? = nil, extensionNumber: String? = nil, name: String? = nil, partnerId: String? = nil, permissions: ExtensionPermissions? = nil, profileImage: ProfileImageInfo? = nil, references: [ReferenceInfo]? = nil, regionalSettings: RegionalSettings? = nil, serviceFeatures: [ExtensionServiceFeatureInfo]? = nil, setupWizardState: String? = nil, status: String? = nil, statusInfo: StatusInfo? = nil, type: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.contact = `contact`
        self.departments = `departments`
        self.extensionNumber = `extensionNumber`
        self.name = `name`
        self.partnerId = `partnerId`
        self.permissions = `permissions`
        self.profileImage = `profileImage`
        self.references = `references`
        self.regionalSettings = `regionalSettings`
        self.serviceFeatures = `serviceFeatures`
        self.setupWizardState = `setupWizardState`
        self.status = `status`
        self.statusInfo = `statusInfo`
        self.type = `type`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `contact` <- map["contact"]
        `departments` <- map["departments"]
        `extensionNumber` <- map["extensionNumber"]
        `name` <- map["name"]
        `partnerId` <- map["partnerId"]
        `permissions` <- map["permissions"]
        `profileImage` <- map["profileImage"]
        `references` <- map["references"]
        `regionalSettings` <- map["regionalSettings"]
        `serviceFeatures` <- map["serviceFeatures"]
        `setupWizardState` <- map["setupWizardState"]
        `status` <- map["status"]
        `statusInfo` <- map["statusInfo"]
        `type` <- map["type"]
    }
}
