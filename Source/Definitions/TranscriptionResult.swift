import Foundation
import ObjectMapper
open class TranscriptionResult: Mappable {
    /*
    */
    open var `STTId`: String?
    /*
    */
    open var `ExternalId`: String?
    /*
    */
    open var `Status`: Int?
    /*
    */
    open var `Mailbox`: String?
    /*
    */
    open var `TranscriptionText`: String?
    /*
    */
    open var `Message`: String?
    /*
    */
    open var `MessageLength`: String?
    /*
    */
    open var `Confidence`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(STTId: String? = nil, ExternalId: String? = nil, Status: Int? = nil, Mailbox: String? = nil, TranscriptionText: String? = nil, Message: String? = nil, MessageLength: String? = nil, Confidence: String? = nil) {
        self.init()
        self.STTId = `STTId`
        self.ExternalId = `ExternalId`
        self.Status = `Status`
        self.Mailbox = `Mailbox`
        self.TranscriptionText = `TranscriptionText`
        self.Message = `Message`
        self.MessageLength = `MessageLength`
        self.Confidence = `Confidence`
    }
    open func mapping(map: Map) {
        `STTId` <- map["STTId"]
        `ExternalId` <- map["ExternalId"]
        `Status` <- map["Status"]
        `Mailbox` <- map["Mailbox"]
        `TranscriptionText` <- map["TranscriptionText"]
        `Message` <- map["Message"]
        `MessageLength` <- map["MessageLength"]
        `Confidence` <- map["Confidence"]
    }
}
