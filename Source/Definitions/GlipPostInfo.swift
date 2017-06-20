import Foundation
import ObjectMapper
open class GlipPostInfo: Mappable {
    // Internal identifier of a post
    open var `id`: String?
    // Internal identifier of a group a post belongs to
    open var `groupId`: String?
    // Type of a post
    open var `type`: String?
    // For 'TextMessage' post type only. Message text
    open var `text`: String?
    // Internal identifier of a user - author of a post
    open var `creatorId`: String?
    // For PersonsAdded post type only. Identifiers of persons added to a group
    open var `addedPersonIds`: [String]?
    // Post creation datetime in ISO 8601 format
    open var `creationTime`: String?
    // Post last modification datetime in ISO 8601 format
    open var `lastModifiedTime`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, groupId: String? = nil, type: String? = nil, text: String? = nil, creatorId: String? = nil, addedPersonIds: [String]? = nil, creationTime: String? = nil, lastModifiedTime: String? = nil) {
        self.init()
        self.id = `id`
        self.groupId = `groupId`
        self.type = `type`
        self.text = `text`
        self.creatorId = `creatorId`
        self.addedPersonIds = `addedPersonIds`
        self.creationTime = `creationTime`
        self.lastModifiedTime = `lastModifiedTime`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `groupId` <- map["groupId"]
        `type` <- map["type"]
        `text` <- map["text"]
        `creatorId` <- map["creatorId"]
        `addedPersonIds` <- map["addedPersonIds"]
        `creationTime` <- map["creationTime"]
        `lastModifiedTime` <- map["lastModifiedTime"]
    }
}
