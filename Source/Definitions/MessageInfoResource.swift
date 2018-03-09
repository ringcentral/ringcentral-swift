import Foundation
import ObjectMapper
open class MessageInfoResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `to`: [CallerInfo]?
    /*
    */
    open var `from`: CallerInfo?
    /*
    */
    open var `type`: String?
    /*
    */
    open var `creationTime`: String?
    /*
    */
    open var `readStatus`: String?
    /*
    */
    open var `priority`: String?
    /*
    */
    open var `attachments`: [MessageAttachmentInfo]?
    /*
    */
    open var `direction`: String?
    /*
    */
    open var `availability`: String?
    /*
    */
    open var `subject`: String?
    /*
    */
    open var `messageStatus`: String?
    /*
    */
    open var `faxResolution`: String?
    /*
    */
    open var `faxPageCount`: Int?
    /*
    */
    open var `deliveryErrorCode`: String?
    /*
    */
    open var `smsDeliveryTime`: String?
    /*
    */
    open var `smsSendingAttemptsCount`: Int?
    /*
    */
    open var `conversationId`: Int?
    /*
    */
    open var `conversation`: ConversationResource?
    /*
    */
    open var `lastModifiedTime`: String?
    /*
    */
    open var `pgToDepartment`: Bool?
    /*
    */
    open var `vmTranscriptionStatus`: String?
    /*
    */
    open var `sourceFilePath`: String?
    /*
    */
    open var `coverIndex`: Int?
    /*
    */
    open var `coverPageText`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, to: [CallerInfo]? = nil, from: CallerInfo? = nil, type: String? = nil, creationTime: String? = nil, readStatus: String? = nil, priority: String? = nil, attachments: [MessageAttachmentInfo]? = nil, direction: String? = nil, availability: String? = nil, subject: String? = nil, messageStatus: String? = nil, faxResolution: String? = nil, faxPageCount: Int? = nil, deliveryErrorCode: String? = nil, smsDeliveryTime: String? = nil, smsSendingAttemptsCount: Int? = nil, conversationId: Int? = nil, conversation: ConversationResource? = nil, lastModifiedTime: String? = nil, pgToDepartment: Bool? = nil, vmTranscriptionStatus: String? = nil, sourceFilePath: String? = nil, coverIndex: Int? = nil, coverPageText: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.to = `to`
        self.from = `from`
        self.type = `type`
        self.creationTime = `creationTime`
        self.readStatus = `readStatus`
        self.priority = `priority`
        self.attachments = `attachments`
        self.direction = `direction`
        self.availability = `availability`
        self.subject = `subject`
        self.messageStatus = `messageStatus`
        self.faxResolution = `faxResolution`
        self.faxPageCount = `faxPageCount`
        self.deliveryErrorCode = `deliveryErrorCode`
        self.smsDeliveryTime = `smsDeliveryTime`
        self.smsSendingAttemptsCount = `smsSendingAttemptsCount`
        self.conversationId = `conversationId`
        self.conversation = `conversation`
        self.lastModifiedTime = `lastModifiedTime`
        self.pgToDepartment = `pgToDepartment`
        self.vmTranscriptionStatus = `vmTranscriptionStatus`
        self.sourceFilePath = `sourceFilePath`
        self.coverIndex = `coverIndex`
        self.coverPageText = `coverPageText`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `to` <- map["to"]
        `from` <- map["from"]
        `type` <- map["type"]
        `creationTime` <- map["creationTime"]
        `readStatus` <- map["readStatus"]
        `priority` <- map["priority"]
        `attachments` <- map["attachments"]
        `direction` <- map["direction"]
        `availability` <- map["availability"]
        `subject` <- map["subject"]
        `messageStatus` <- map["messageStatus"]
        `faxResolution` <- map["faxResolution"]
        `faxPageCount` <- map["faxPageCount"]
        `deliveryErrorCode` <- map["deliveryErrorCode"]
        `smsDeliveryTime` <- map["smsDeliveryTime"]
        `smsSendingAttemptsCount` <- map["smsSendingAttemptsCount"]
        `conversationId` <- map["conversationId"]
        `conversation` <- map["conversation"]
        `lastModifiedTime` <- map["lastModifiedTime"]
        `pgToDepartment` <- map["pgToDepartment"]
        `vmTranscriptionStatus` <- map["vmTranscriptionStatus"]
        `sourceFilePath` <- map["sourceFilePath"]
        `coverIndex` <- map["coverIndex"]
        `coverPageText` <- map["coverPageText"]
    }
}
