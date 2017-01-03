import Foundation
import ObjectMapper
open class ExtensionInfo_Request_StatusInfo: Definition {
    // Required extension status
    open var `status`: String?
    // Extension status information, only for the 'Disabled' status
    open var `statusInfo`: StatusInfo?
    convenience public init(status: String? = nil, statusInfo: StatusInfo? = nil) {
        self.init()
        self.status = `status`
        self.statusInfo = `statusInfo`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `status` <- map["status"]
        `statusInfo` <- map["statusInfo"]
    }
}
