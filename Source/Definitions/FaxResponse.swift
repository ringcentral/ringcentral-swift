import Foundation
import ObjectMapper
open class FaxResponse: Mappable {
    /*
    Internal identifier of a message
    */
    open var `id`: String?
    /*
    Canonical URI of a message
    */
    open var `uri`: String?
    /*
    Message type - 'Fax'
    */
    open var `type`: String?
    /*
    Sender information
    */
    open var `from`: CallerInfoFrom?
    /*
    Recipient information
    */
    open var `to`: [CallerInfoTo]?
    /*
    Message creation datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    */
    open var `creationTime`: String?
    /*
    Message read status
    */
    open var `readStatus`: String?
    /*
    Message priority
    */
    open var `priority`: String?
    /*
    The list of message attachments
    */
    open var `attachments`: [MessageAttachmentInfo]?
    /*
    Message direction
    */
    open var `direction`: String?
    /*
    Message availability status. Message in 'Deleted' state is still preserved with all its attachments and can be restored. 'Purged' means that all attachments are already deleted and the message itself is about to be physically deleted shortly
    */
    open var `availability`: String?
    /*
    Message status. 'Queued' - the message is queued for sending; 'Sent' - a message is successfully sent; 'SendingFailed' - a message sending attempt has failed; 'Received' - a message is received (inbound messages have this status by default)
    */
    open var `messageStatus`: String?
    /*
    Resolution of a fax message. ('High' for black and white image scanned at 200 dpi, 'Low' for black and white image scanned at 100 dpi)
    */
    open var `faxResolution`: String?
    /*
    Page count in a fax message
    */
    open var `faxPageCount`: Int?
    /*
    Datetime when the message was modified on server in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    */
    open var `lastModifiedTime`: String?
    /*
    Cover page identifier. For the list of available cover page identifiers please call the method Fax Cover Pages
    */
    open var `coverIndex`: Int?
    /*
    Cover page text, entered by the fax sender and printed on the cover page. Maximum length is limited to 1024 symbols
    */
    open var `coverPageText`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, type: String? = nil, from: CallerInfoFrom? = nil, to: [CallerInfoTo]? = nil, creationTime: String? = nil, readStatus: String? = nil, priority: String? = nil, attachments: [MessageAttachmentInfo]? = nil, direction: String? = nil, availability: String? = nil, messageStatus: String? = nil, faxResolution: String? = nil, faxPageCount: Int? = nil, lastModifiedTime: String? = nil, coverIndex: Int? = nil, coverPageText: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.type = `type`
        self.from = `from`
        self.to = `to`
        self.creationTime = `creationTime`
        self.readStatus = `readStatus`
        self.priority = `priority`
        self.attachments = `attachments`
        self.direction = `direction`
        self.availability = `availability`
        self.messageStatus = `messageStatus`
        self.faxResolution = `faxResolution`
        self.faxPageCount = `faxPageCount`
        self.lastModifiedTime = `lastModifiedTime`
        self.coverIndex = `coverIndex`
        self.coverPageText = `coverPageText`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `type` <- map["type"]
        `from` <- map["from"]
        `to` <- map["to"]
        `creationTime` <- map["creationTime"]
        `readStatus` <- map["readStatus"]
        `priority` <- map["priority"]
        `attachments` <- map["attachments"]
        `direction` <- map["direction"]
        `availability` <- map["availability"]
        `messageStatus` <- map["messageStatus"]
        `faxResolution` <- map["faxResolution"]
        `faxPageCount` <- map["faxPageCount"]
        `lastModifiedTime` <- map["lastModifiedTime"]
        `coverIndex` <- map["coverIndex"]
        `coverPageText` <- map["coverPageText"]
    }
}
