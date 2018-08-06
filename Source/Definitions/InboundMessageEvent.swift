import Foundation
import ObjectMapper
open class InboundMessageEvent: Mappable {
    /*
    Information on a notification
    */
    open var `aps`: NotificationInfo?
    /*
    Internal identifier of a message
    */
    open var `messageId`: String?
    /*
    Internal identifier of an conversation
    */
    open var `conversationId`: String?
    /*
    Sender phone number. For GCM transport type '_from' property should be used
    */
    open var `from`: String?
    /*
    Receiver phone number
    */
    open var `to`: String?
    /*
    Internal identifier of a subscription owner extension
    */
    open var `ownerId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(aps: NotificationInfo? = nil, messageId: String? = nil, conversationId: String? = nil, from: String? = nil, to: String? = nil, ownerId: String? = nil) {
        self.init()
        self.aps = `aps`
        self.messageId = `messageId`
        self.conversationId = `conversationId`
        self.from = `from`
        self.to = `to`
        self.ownerId = `ownerId`
    }
    open func mapping(map: Map) {
        `aps` <- map["aps"]
        `messageId` <- map["messageId"]
        `conversationId` <- map["conversationId"]
        `from` <- map["from"]
        `to` <- map["to"]
        `ownerId` <- map["ownerId"]
    }
}
