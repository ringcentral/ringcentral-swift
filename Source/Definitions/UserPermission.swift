import Foundation
import ObjectMapper
open class UserPermission: Mappable {
    /*
    Information on a permission granted
    */
    open var `permission`: UserPermissionInfo?
    /*
    List of active scopes for permission
    */
    open var `scopes`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(permission: UserPermissionInfo? = nil, scopes: [String]? = nil) {
        self.init()
        self.permission = `permission`
        self.scopes = `scopes`
    }
    open func mapping(map: Map) {
        `permission` <- map["permission"]
        `scopes` <- map["scopes"]
    }
}
