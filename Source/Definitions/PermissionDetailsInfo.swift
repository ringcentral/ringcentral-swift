import Foundation
import ObjectMapper
open class PermissionDetailsInfo: Definition {
    // Information on a permission checked
    open var `permission`: UserPermissionInfo?
    convenience public init(permission: UserPermissionInfo? = nil) {
        self.init()
        self.permission = `permission`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `permission` <- map["permission"]
    }
}
