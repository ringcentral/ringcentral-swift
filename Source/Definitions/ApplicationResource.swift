import Foundation
import ObjectMapper
open class ApplicationResource: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `description`: String?
    /*
    */
    open var `organization`: OrganizationResource?
    /*
    */
    open var `scope`: String?
    /*
    */
    open var `platformType`: String?
    /*
    */
    open var `permissions`: [PermissionResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, name: String? = nil, description: String? = nil, organization: OrganizationResource? = nil, scope: String? = nil, platformType: String? = nil, permissions: [PermissionResource]? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
        self.description = `description`
        self.organization = `organization`
        self.scope = `scope`
        self.platformType = `platformType`
        self.permissions = `permissions`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `description` <- map["description"]
        `organization` <- map["organization"]
        `scope` <- map["scope"]
        `platformType` <- map["platformType"]
        `permissions` <- map["permissions"]
    }
}
