import Foundation
import ObjectMapper
open class ExtensionInfo_Request_Provision: Mappable {
    // Mandatory. Resulting extension status
    open var `status`: String?
    // Mandatory. Extension user contact information
    open var `contact`: ExtensionInfo_Request_Provision_ContactInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(status: String? = nil, contact: ExtensionInfo_Request_Provision_ContactInfo? = nil) {
        self.init()
        self.status = `status`
        self.contact = `contact`
    }
    open func mapping(map: Map) {
        `status` <- map["status"]
        `contact` <- map["contact"]
    }
}
