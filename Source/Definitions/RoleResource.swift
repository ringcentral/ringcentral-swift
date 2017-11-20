import Foundation
import ObjectMapper
open class RoleResource: Mappable {
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
    open var `custom`: Bool?
    /*
    */
    open var `scope`: String?
    /*
    */
    open var `hidden`: Bool?
    /*
    */
    open var `lastUpdated`: String?
    /*
    */
    open var `permissions`: [PermissionIdResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, displayName: String? = nil, description: String? = nil, custom: Bool? = nil, scope: String? = nil, hidden: Bool? = nil, lastUpdated: String? = nil, permissions: [PermissionIdResource]? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.displayName = `displayName`
        self.description = `description`
        self.custom = `custom`
        self.scope = `scope`
        self.hidden = `hidden`
        self.lastUpdated = `lastUpdated`
        self.permissions = `permissions`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `displayName` <- map["displayName"]
        `description` <- map["description"]
        `custom` <- map["custom"]
        `scope` <- map["scope"]
        `hidden` <- map["hidden"]
        `lastUpdated` <- map["lastUpdated"]
        `permissions` <- map["permissions"]
    }
}
