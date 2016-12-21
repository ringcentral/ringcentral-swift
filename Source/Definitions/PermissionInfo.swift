import Foundation
import ObjectMapper
import Alamofire
open class PermissionInfo: Mappable {
    // Specifies if a permission is enabled or not
    open var `enabled`: Bool?
    public init() {
    }
    convenience public init(enabled: Bool? = nil) {
        self.init()
        self.enabled = `enabled`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `enabled` <- map["enabled"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
