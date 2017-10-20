import Foundation
import ObjectMapper
open class PermissionDetailsInfo: Mappable {
    /*
    Information on a permission checked
    */
    open var `permission`: UserPermissionInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(permission: UserPermissionInfo? = nil) {
        self.init()
        self.permission = `permission`
    }
    open func mapping(map: Map) {
        `permission` <- map["permission"]
    }
}
