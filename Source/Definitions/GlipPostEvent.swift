import Foundation
import ObjectMapper
open class GlipPostEvent: Mappable {
    /*
    Internal identifier of a post
    */
    open var `id`: String?
    /*
    Type of a post event
    */
    open var `eventType`: String?
    /*
    Internal identifier of a group a post belongs to
    */
    open var `groupId`: String?
    /*
    Type of a post. 'TextMessage' - an incoming text message; 'PersonJoined' - a message notifying that person has joined a conversation; 'PersonsAdded' - a message notifying that a person(s) were added to a conversation
    */
    open var `type`: String?
    /*
    For 'TextMessage' post type only. Message text
    */
    open var `text`: String?
    /*
    Internal identifier of a user - author of a post
    */
    open var `creatorId`: String?
    /*
    For PersonsAdded post type only. Identifiers of persons added to a group
    */
    open var `addedPersonIds`: [String]?
    /*
    For PersonsRemoved post type only. Identifiers of persons removed from a group
    */
    open var `removedPersonIds`: [String]?
    /*
    List of at mentions in post text with names.
    */
    open var `mentions`: [GlipMentionsInfo]?
    /*
    Post creation datetime in ISO 8601 format
    */
    open var `creationTime`: String?
    /*
    Post last change datetime in ISO 8601 format
    */
    open var `lastModifiedTime`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, eventType: String? = nil, groupId: String? = nil, type: String? = nil, text: String? = nil, creatorId: String? = nil, addedPersonIds: [String]? = nil, removedPersonIds: [String]? = nil, mentions: [GlipMentionsInfo]? = nil, creationTime: String? = nil, lastModifiedTime: String? = nil) {
        self.init()
        self.id = `id`
        self.eventType = `eventType`
        self.groupId = `groupId`
        self.type = `type`
        self.text = `text`
        self.creatorId = `creatorId`
        self.addedPersonIds = `addedPersonIds`
        self.removedPersonIds = `removedPersonIds`
        self.mentions = `mentions`
        self.creationTime = `creationTime`
        self.lastModifiedTime = `lastModifiedTime`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `eventType` <- map["eventType"]
        `groupId` <- map["groupId"]
        `type` <- map["type"]
        `text` <- map["text"]
        `creatorId` <- map["creatorId"]
        `addedPersonIds` <- map["addedPersonIds"]
        `removedPersonIds` <- map["removedPersonIds"]
        `mentions` <- map["mentions"]
        `creationTime` <- map["creationTime"]
        `lastModifiedTime` <- map["lastModifiedTime"]
    }
}
