import Foundation
import ObjectMapper
open class GlipGroupsEvent: Mappable {
    /*
    Internal identifier of a group
    */
    open var `id`: String?
    /*
    Type of a group. 'PrivateChat' is a group of 2 members. 'Group' is a chat of 2 and more participants, the membership cannot be changed after group creation. 'Team' is a chat of 1 and more participants, the membership can be modified in future. 'PersonalChat' is a private chat thread of a user
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
    Identifier(s) of group members
    */
    open var `members`: [String]?
    /*
    Group creation datetime in ISO 8601 format
    */
    open var `creationTime`: String?
    /*
    Group last change datetime in ISO 8601 format
    */
    open var `lastModifiedTime`: String?
    /*
    Type of a group event. Only the person who joined/was added to a group will receive 'GroupJoined' notification. Only the person who left/was removed from a group will receive 'GroupLeft' notification
    */
    open var `eventType`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, type: String? = nil, isPublic: Bool? = nil, name: String? = nil, description: String? = nil, members: [String]? = nil, creationTime: String? = nil, lastModifiedTime: String? = nil, eventType: String? = nil) {
        self.init()
        self.id = `id`
        self.type = `type`
        self.isPublic = `isPublic`
        self.name = `name`
        self.description = `description`
        self.members = `members`
        self.creationTime = `creationTime`
        self.lastModifiedTime = `lastModifiedTime`
        self.eventType = `eventType`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `type` <- map["type"]
        `isPublic` <- map["isPublic"]
        `name` <- map["name"]
        `description` <- map["description"]
        `members` <- map["members"]
        `creationTime` <- map["creationTime"]
        `lastModifiedTime` <- map["lastModifiedTime"]
        `eventType` <- map["eventType"]
    }
}
