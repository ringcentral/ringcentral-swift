import Foundation
import ObjectMapper
open class PermissionInfo: Definition {
    // Specifies if a permission is enabled or not
    open var `enabled`: Bool?
    convenience public init(enabled: Bool? = nil) {
        self.init()
        self.enabled = `enabled`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `enabled` <- map["enabled"]
    }
}
