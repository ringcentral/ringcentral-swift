import Foundation
import ObjectMapper
open class GlipCreateGroup: Mappable {
    /*
    Type of a group to be created. 'PrivateChat' is a group of 2 members. 'Team' is a chat of 1 and more participants, the membership can be modified in future
    */
    open var `type`: String?
    /*
    For 'Team' group type only. Team access level
    */
    open var `isPublic`: Bool?
    /*
    For 'Team' group type only. Team name
    */
    open var `name`: String?
    /*
    For 'Team' group type only. Team description
    */
    open var `description`: String?
    /*
    Identifier(s) of group members. For 'PrivateChat' group type 2 members only are supported
    */
    open var `members`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(type: String? = nil, isPublic: Bool? = nil, name: String? = nil, description: String? = nil, members: [String]? = nil) {
        self.init()
        self.type = `type`
        self.isPublic = `isPublic`
        self.name = `name`
        self.description = `description`
        self.members = `members`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `isPublic` <- map["isPublic"]
        `name` <- map["name"]
        `description` <- map["description"]
        `members` <- map["members"]
    }
}
