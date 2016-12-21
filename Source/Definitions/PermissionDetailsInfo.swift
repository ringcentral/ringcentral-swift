import Foundation
import ObjectMapper
import Alamofire
open class PermissionDetailsInfo: Mappable {
    // Information on a permission checked
    open var `permission`: UserPermissionInfo?
    public init() {
    }
    convenience public init(permission: UserPermissionInfo? = nil) {
        self.init()
        self.permission = `permission`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `permission` <- map["permission"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
