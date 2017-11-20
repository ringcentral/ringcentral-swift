import Foundation
import ObjectMapper
open class ActivePermissionResource: Mappable {
    /*
    */
    open var `permission`: PermissionIdResource?
    /*
    */
    open var `effectiveRole`: RoleIdResource?
    /*
    */
    open var `scopes`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(permission: PermissionIdResource? = nil, effectiveRole: RoleIdResource? = nil, scopes: [String]? = nil) {
        self.init()
        self.permission = `permission`
        self.effectiveRole = `effectiveRole`
        self.scopes = `scopes`
    }
    open func mapping(map: Map) {
        `permission` <- map["permission"]
        `effectiveRole` <- map["effectiveRole"]
        `scopes` <- map["scopes"]
    }
}
