import Foundation
import ObjectMapper
open class ExtensionInfo_Request_StatusInfo: Mappable {
    /*
    Required extension status
    */
    open var `status`: String?
    /*
    Extension status information, only for the 'Disabled' status
    */
    open var `statusInfo`: StatusInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(status: String? = nil, statusInfo: StatusInfo? = nil) {
        self.init()
        self.status = `status`
        self.statusInfo = `statusInfo`
    }
    open func mapping(map: Map) {
        `status` <- map["status"]
        `statusInfo` <- map["statusInfo"]
    }
}
