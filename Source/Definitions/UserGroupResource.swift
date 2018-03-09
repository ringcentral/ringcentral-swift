import Foundation
import ObjectMapper
open class UserGroupResource: Mappable {
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
    open var `managers`: [UserGroupManagerResource]?
    /*
    */
    open var `members`: [ExtensionIdResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, displayName: String? = nil, description: String? = nil, managers: [UserGroupManagerResource]? = nil, members: [ExtensionIdResource]? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.displayName = `displayName`
        self.description = `description`
        self.managers = `managers`
        self.members = `members`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `displayName` <- map["displayName"]
        `description` <- map["description"]
        `managers` <- map["managers"]
        `members` <- map["members"]
    }
}
