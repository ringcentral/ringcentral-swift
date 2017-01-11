import Foundation
import ObjectMapper
open class InstantMessageEvent: Mappable {
    // Internal identifier of a message
    open var `id`: String?
    // Message receiver(s) information
    open var `to`: [InstantMessageEvent_CallerInfo]?
    // Message sender information
    open var `from`: InstantMessageEvent_CallerInfo?
    // Type of a message. The default value is 'SMS'
    open var `type`: String?
    // Message creation datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `creationTime`: String?
    // The datetime when the message was modified in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `lastModifiedTime`: String?
    // Status of a message. The default value is 'Unread'
    open var `readStatus`: String?
    // The default value is 'Normal'
    open var `priority`: String?
    // Message attachment data
    open var `attachments`: [InstantMessageAttachmentInfo]?
    // Message direction. The default value is 'Inbound'
    open var `direction`: String?
    // Message availability status. The default value is 'Alive'
    open var `availability`: String?
    // Message subject. It replicates message text which is also returned as an attachment
    open var `subject`: String?
    // Status of a message. The default value is 'Received'
    open var `messageStatus`: String?
    // Identifier of the conversation the message belongs to
    open var `conversationId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, to: [InstantMessageEvent_CallerInfo]? = nil, from: InstantMessageEvent_CallerInfo? = nil, type: String? = nil, creationTime: String? = nil, lastModifiedTime: String? = nil, readStatus: String? = nil, priority: String? = nil, attachments: [InstantMessageAttachmentInfo]? = nil, direction: String? = nil, availability: String? = nil, subject: String? = nil, messageStatus: String? = nil, conversationId: String? = nil) {
        self.init()
        self.id = `id`
        self.to = `to`
        self.from = `from`
        self.type = `type`
        self.creationTime = `creationTime`
        self.lastModifiedTime = `lastModifiedTime`
        self.readStatus = `readStatus`
        self.priority = `priority`
        self.attachments = `attachments`
        self.direction = `direction`
        self.availability = `availability`
        self.subject = `subject`
        self.messageStatus = `messageStatus`
        self.conversationId = `conversationId`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `to` <- map["to"]
        `from` <- map["from"]
        `type` <- map["type"]
        `creationTime` <- map["creationTime"]
        `lastModifiedTime` <- map["lastModifiedTime"]
        `readStatus` <- map["readStatus"]
        `priority` <- map["priority"]
        `attachments` <- map["attachments"]
        `direction` <- map["direction"]
        `availability` <- map["availability"]
        `subject` <- map["subject"]
        `messageStatus` <- map["messageStatus"]
        `conversationId` <- map["conversationId"]
    }
}
