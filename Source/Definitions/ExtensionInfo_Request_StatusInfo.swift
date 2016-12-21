import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_StatusInfo: Mappable {
    // Required extension status
    open var `status`: String?
    // Extension status information, only for the 'Disabled' status
    open var `statusInfo`: StatusInfo?
    public init() {
    }
    convenience public init(status: String? = nil, statusInfo: StatusInfo? = nil) {
        self.init()
        self.status = `status`
        self.statusInfo = `statusInfo`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `status` <- map["status"]
        `statusInfo` <- map["statusInfo"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
