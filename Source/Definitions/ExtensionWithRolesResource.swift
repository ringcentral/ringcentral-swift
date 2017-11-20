import Foundation
import ObjectMapper
open class ExtensionWithRolesResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `extensionId`: String?
    /*
    */
    open var `roles`: [AssignedRoleResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, extensionId: String? = nil, roles: [AssignedRoleResource]? = nil) {
        self.init()
        self.uri = `uri`
        self.extensionId = `extensionId`
        self.roles = `roles`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `extensionId` <- map["extensionId"]
        `roles` <- map["roles"]
    }
}
