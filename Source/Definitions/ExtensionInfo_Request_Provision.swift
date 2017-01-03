import Foundation
import ObjectMapper
open class ExtensionInfo_Request_Provision: Definition {
    // Mandatory. Resulting extension status
    open var `status`: String?
    // Mandatory. Extension user contact information
    open var `contact`: ExtensionInfo_Request_Provision_ContactInfo?
    convenience public init(status: String? = nil, contact: ExtensionInfo_Request_Provision_ContactInfo? = nil) {
        self.init()
        self.status = `status`
        self.contact = `contact`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `status` <- map["status"]
        `contact` <- map["contact"]
    }
}
