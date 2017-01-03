import Foundation
import ObjectMapper
open class ExtensionInfo_Request_ContactInfo: Definition {
    // Contact information
    open var `contact`: ContactInfo?
    // Region data (timezone, home country, language)
    open var `regionalSettings`: ExtensionInfo_Request_ContactInfo_RegionalSettings?
    // Specifies extension configuration wizard state (web service setup). The default value is 'NotStarted'
    open var `setupWizardState`: String?
    // Extension user department
    open var `department`: String?
    convenience public init(contact: ContactInfo? = nil, regionalSettings: ExtensionInfo_Request_ContactInfo_RegionalSettings? = nil, setupWizardState: String? = nil, department: String? = nil) {
        self.init()
        self.contact = `contact`
        self.regionalSettings = `regionalSettings`
        self.setupWizardState = `setupWizardState`
        self.department = `department`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `contact` <- map["contact"]
        `regionalSettings` <- map["regionalSettings"]
        `setupWizardState` <- map["setupWizardState"]
        `department` <- map["department"]
    }
}
