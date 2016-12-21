import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_ContactInfo: Mappable {
    // Contact information
    open var `contact`: ContactInfo?
    // Region data (timezone, home country, language)
    open var `regionalSettings`: ExtensionInfo_Request_ContactInfo_RegionalSettings?
    // Specifies extension configuration wizard state (web service setup). The default value is 'NotStarted'
    open var `setupWizardState`: String?
    // Extension user department
    open var `department`: String?
    public init() {
    }
    convenience public init(contact: ContactInfo? = nil, regionalSettings: ExtensionInfo_Request_ContactInfo_RegionalSettings? = nil, setupWizardState: String? = nil, department: String? = nil) {
        self.init()
        self.contact = `contact`
        self.regionalSettings = `regionalSettings`
        self.setupWizardState = `setupWizardState`
        self.department = `department`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `contact` <- map["contact"]
        `regionalSettings` <- map["regionalSettings"]
        `setupWizardState` <- map["setupWizardState"]
        `department` <- map["department"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
