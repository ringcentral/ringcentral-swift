import Foundation
import ObjectMapper
open class AssignedRoleResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `autoAssigned`: Bool?
    /*
    */
    open var `displayName`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, autoAssigned: Bool? = nil, displayName: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.autoAssigned = `autoAssigned`
        self.displayName = `displayName`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `autoAssigned` <- map["autoAssigned"]
        `displayName` <- map["displayName"]
    }
}
