import Foundation
import ObjectMapper
open class UserPermissionInfo: Definition {
    // Internal identifier of a permission
    open var `id`: String?
    // Canonical URI of a permission resource
    open var `uri`: String?
    convenience public init(id: String? = nil, uri: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
    }
}
