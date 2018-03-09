import Foundation
import ObjectMapper
open class PermissionResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `displayName`: String?
    /*
    */
    open var `description`: String?
    /*
    */
    open var `assignable`: Bool?
    /*
    */
    open var `readOnly`: Bool?
    /*
    */
    open var `category`: PermissionCategoryIdResource?
    /*
    */
    open var `includedPermissions`: [PermissionIdResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, displayName: String? = nil, description: String? = nil, assignable: Bool? = nil, readOnly: Bool? = nil, category: PermissionCategoryIdResource? = nil, includedPermissions: [PermissionIdResource]? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.displayName = `displayName`
        self.description = `description`
        self.assignable = `assignable`
        self.readOnly = `readOnly`
        self.category = `category`
        self.includedPermissions = `includedPermissions`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `displayName` <- map["displayName"]
        `description` <- map["description"]
        `assignable` <- map["assignable"]
        `readOnly` <- map["readOnly"]
        `category` <- map["category"]
        `includedPermissions` <- map["includedPermissions"]
    }
}
