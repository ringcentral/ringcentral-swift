import Foundation
import ObjectMapper
open class PermissionCategoryResource: Mappable {
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
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, displayName: String? = nil, description: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.displayName = `displayName`
        self.description = `description`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `displayName` <- map["displayName"]
        `description` <- map["description"]
    }
}
