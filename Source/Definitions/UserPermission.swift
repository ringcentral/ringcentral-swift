import Foundation
import ObjectMapper
import Alamofire
open class UserPermission: Mappable {
    // Information on a permission granted
    open var `permission`: UserPermissionInfo?
    // List of active scopes for permission
    open var `scopes`: [String]?
    public init() {
    }
    convenience public init(permission: UserPermissionInfo? = nil, scopes: [String]? = nil) {
        self.init()
        self.permission = `permission`
        self.scopes = `scopes`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `permission` <- map["permission"]
        `scopes` <- map["scopes"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
