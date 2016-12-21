import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_Provision: Mappable {
    // Mandatory. Resulting extension status
    open var `status`: String?
    // Mandatory. Extension user contact information
    open var `contact`: ExtensionInfo_Request_Provision_ContactInfo?
    public init() {
    }
    convenience public init(status: String? = nil, contact: ExtensionInfo_Request_Provision_ContactInfo? = nil) {
        self.init()
        self.status = `status`
        self.contact = `contact`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `status` <- map["status"]
        `contact` <- map["contact"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
