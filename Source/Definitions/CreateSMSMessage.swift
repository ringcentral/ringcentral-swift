import Foundation
import ObjectMapper
open class CreateSMSMessage: Mappable {
    /*
    Sender of an SMS message. The phoneNumber property must be filled to correspond to one of the account phone numbers which is allowed to send SMS
    */
    open var `from`: MessageStoreCallerInfoRequest?
    /*
    Receiver of an SMS message. The phoneNumber property must be filled
    */
    open var `to`: [MessageStoreCallerInfoRequest]?
    /*
    Text of a message. Max length is 1000 symbols (2-byte UTF-16 encoded). If a character is encoded in 4 bytes in UTF-16 it is treated as 2 characters, thus restricting the maximum message length to 500 symbols
    */
    open var `text`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(from: MessageStoreCallerInfoRequest? = nil, to: [MessageStoreCallerInfoRequest]? = nil, text: String? = nil) {
        self.init()
        self.from = `from`
        self.to = `to`
        self.text = `text`
    }
    open func mapping(map: Map) {
        `from` <- map["from"]
        `to` <- map["to"]
        `text` <- map["text"]
    }
}
