import Foundation
import ObjectMapper
open class ExtensionResourceIntId: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: Int?
    /*
    */
    open var `partnerId`: String?
    /*
    */
    open var `extensionNumber`: String?
    /*
    */
    open var `loginName`: String?
    /*
    */
    open var `contact`: ContactInfo?
    /*
    */
    open var `references`: [Reference]?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `type`: String?
    /*
    */
    open var `status`: String?
    /*
    */
    open var `statusInfo`: StatusInfo?
    /*
    */
    open var `departments`: [DepartmentResource]?
    /*
    */
    open var `serviceFeatures`: [ServiceFeatureValue]?
    /*
    */
    open var `regionalSettings`: RegionalSettingsResource?
    /*
    */
    open var `setupWizardState`: String?
    /*
    */
    open var `permissions`: ExtensionPermissionsResource?
    /*
    */
    open var `password`: String?
    /*
    */
    open var `ivrPin`: String?
    /*
    */
    open var `profileImage`: ProfileImageResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: Int? = nil, partnerId: String? = nil, extensionNumber: String? = nil, loginName: String? = nil, contact: ContactInfo? = nil, references: [Reference]? = nil, name: String? = nil, type: String? = nil, status: String? = nil, statusInfo: StatusInfo? = nil, departments: [DepartmentResource]? = nil, serviceFeatures: [ServiceFeatureValue]? = nil, regionalSettings: RegionalSettingsResource? = nil, setupWizardState: String? = nil, permissions: ExtensionPermissionsResource? = nil, password: String? = nil, ivrPin: String? = nil, profileImage: ProfileImageResource? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.partnerId = `partnerId`
        self.extensionNumber = `extensionNumber`
        self.loginName = `loginName`
        self.contact = `contact`
        self.references = `references`
        self.name = `name`
        self.type = `type`
        self.status = `status`
        self.statusInfo = `statusInfo`
        self.departments = `departments`
        self.serviceFeatures = `serviceFeatures`
        self.regionalSettings = `regionalSettings`
        self.setupWizardState = `setupWizardState`
        self.permissions = `permissions`
        self.password = `password`
        self.ivrPin = `ivrPin`
        self.profileImage = `profileImage`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `partnerId` <- map["partnerId"]
        `extensionNumber` <- map["extensionNumber"]
        `loginName` <- map["loginName"]
        `contact` <- map["contact"]
        `references` <- map["references"]
        `name` <- map["name"]
        `type` <- map["type"]
        `status` <- map["status"]
        `statusInfo` <- map["statusInfo"]
        `departments` <- map["departments"]
        `serviceFeatures` <- map["serviceFeatures"]
        `regionalSettings` <- map["regionalSettings"]
        `setupWizardState` <- map["setupWizardState"]
        `permissions` <- map["permissions"]
        `password` <- map["password"]
        `ivrPin` <- map["ivrPin"]
        `profileImage` <- map["profileImage"]
    }
}
