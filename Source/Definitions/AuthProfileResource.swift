import Foundation
import ObjectMapper
open class AuthProfileResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `permissions`: [ActivePermissionResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, permissions: [ActivePermissionResource]? = nil) {
        self.init()
        self.uri = `uri`
        self.permissions = `permissions`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `permissions` <- map["permissions"]
    }
}
