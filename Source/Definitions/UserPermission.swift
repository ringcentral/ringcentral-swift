import Foundation
import ObjectMapper
open class UserPermission: Definition {
    // Information on a permission granted
    open var `permission`: UserPermissionInfo?
    // List of active scopes for permission
    open var `scopes`: [String]?
    convenience public init(permission: UserPermissionInfo? = nil, scopes: [String]? = nil) {
        self.init()
        self.permission = `permission`
        self.scopes = `scopes`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `permission` <- map["permission"]
        `scopes` <- map["scopes"]
    }
}
