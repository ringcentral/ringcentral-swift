import Foundation
import ObjectMapper
open class MessageInfo: Mappable {
    /*
    Internal identifier of a message
    */
    open var `id`: String?
    /*
    Canonical URI of a message
    */
    open var `uri`: String?
    /*
    The list of message attachments
    */
    open var `attachments`: [MessageAttachmentInfo]?
    /*
    Message availability status. Message in 'Deleted' state is still preserved with all its attachments and can be restored. 'Purged' means that all attachments are already deleted and the message itself is about to be physically deleted shortly
    */
    open var `availability`: String?
    /*
    SMS and Pager only. Identifier of the conversation the message belongs to
    */
    open var `conversationId`: Int?
    /*
    Message creation datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    */
    open var `creationTime`: String?
    /*
    SMS only. Delivery error code returned by gateway
    */
    open var `deliveryErrorCode`: String?
    /*
    Message direction. Note that for some message types not all directions are allowed. For example voicemail messages can be only inbound
    */
    open var `direction`: String?
    /*
    Fax only. Page count in fax message
    */
    open var `faxPageCount`: Int?
    /*
    Fax only. Resolution of fax message. ('High' for black and white image scanned at 200 dpi, 'Low' for black and white image scanned at 100 dpi)
    */
    open var `faxResolution`: String?
    /*
    Sender information
    */
    open var `from`: MessageInfo_CallerInfo?
    /*
    The datetime when the message was modified on server in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    */
    open var `lastModifiedTime`: String?
    /*
    Message status. Different message types may have different allowed status values.
    */
    open var `messageStatus`: String?
    /*
    Pager only True if at least one of the message recipients is Department extension
    */
    open var `pgToDepartment`: Bool?
    /*
    Message priority
    */
    open var `priority`: String?
    /*
    Message read status
    */
    open var `readStatus`: String?
    /*
    SMS only. The datetime when outbound SMS was delivered to recipient's handset in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. It is filled only if the carrier sends a delivery receipt to RingCentral
    */
    open var `smsDeliveryTime`: String?
    /*
    SMS only. Number of attempts made to send an outbound SMS to the gateway (if gateway is temporary unavailable)
    */
    open var `smsSendingAttemptsCount`: Int?
    /*
    Message subject. For SMS and Pager messages it replicates message text which is also returned as an attachment
    */
    open var `subject`: String?
    /*
    Recipient information
    */
    open var `to`: [MessageInfo_CallerInfo]?
    /*
    Message type
    */
    open var `type`: String?
    /*
    Voicemail only. Status of voicemail to text transcription. If VoicemailToText feature is not activated for account, the 'NotAvailable' value is returned
    */
    open var `vmTranscriptionStatus`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, attachments: [MessageAttachmentInfo]? = nil, availability: String? = nil, conversationId: Int? = nil, creationTime: String? = nil, deliveryErrorCode: String? = nil, direction: String? = nil, faxPageCount: Int? = nil, faxResolution: String? = nil, from: MessageInfo_CallerInfo? = nil, lastModifiedTime: String? = nil, messageStatus: String? = nil, pgToDepartment: Bool? = nil, priority: String? = nil, readStatus: String? = nil, smsDeliveryTime: String? = nil, smsSendingAttemptsCount: Int? = nil, subject: String? = nil, to: [MessageInfo_CallerInfo]? = nil, type: String? = nil, vmTranscriptionStatus: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.attachments = `attachments`
        self.availability = `availability`
        self.conversationId = `conversationId`
        self.creationTime = `creationTime`
        self.deliveryErrorCode = `deliveryErrorCode`
        self.direction = `direction`
        self.faxPageCount = `faxPageCount`
        self.faxResolution = `faxResolution`
        self.from = `from`
        self.lastModifiedTime = `lastModifiedTime`
        self.messageStatus = `messageStatus`
        self.pgToDepartment = `pgToDepartment`
        self.priority = `priority`
        self.readStatus = `readStatus`
        self.smsDeliveryTime = `smsDeliveryTime`
        self.smsSendingAttemptsCount = `smsSendingAttemptsCount`
        self.subject = `subject`
        self.to = `to`
        self.type = `type`
        self.vmTranscriptionStatus = `vmTranscriptionStatus`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `attachments` <- map["attachments"]
        `availability` <- map["availability"]
        `conversationId` <- map["conversationId"]
        `creationTime` <- map["creationTime"]
        `deliveryErrorCode` <- map["deliveryErrorCode"]
        `direction` <- map["direction"]
        `faxPageCount` <- map["faxPageCount"]
        `faxResolution` <- map["faxResolution"]
        `from` <- map["from"]
        `lastModifiedTime` <- map["lastModifiedTime"]
        `messageStatus` <- map["messageStatus"]
        `pgToDepartment` <- map["pgToDepartment"]
        `priority` <- map["priority"]
        `readStatus` <- map["readStatus"]
        `smsDeliveryTime` <- map["smsDeliveryTime"]
        `smsSendingAttemptsCount` <- map["smsSendingAttemptsCount"]
        `subject` <- map["subject"]
        `to` <- map["to"]
        `type` <- map["type"]
        `vmTranscriptionStatus` <- map["vmTranscriptionStatus"]
    }
}
