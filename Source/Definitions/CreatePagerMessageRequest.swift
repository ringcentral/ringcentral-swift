import Foundation
import ObjectMapper
open class CreatePagerMessageRequest: Mappable {
    /*
    Sender of a pager message. The extensionNumber property must be filled
    */
    open var `from`: MessageStoreCallerInfoRequest?
    /*
    Internal identifier of a message this message replies to
    */
    open var `replyOn`: Int?
    /*
    Text of a pager message. Max length is 1024 symbols (2-byte UTF-16 encoded). If a character is encoded in 4 bytes in UTF-16 it is treated as 2 characters, thus restricting the maximum message length to 512 symbols
    */
    open var `text`: String?
    /*
    Optional if replyOn parameter is specified. Receiver of a pager message. The extensionNumber property must be filled
    */
    open var `to`: [MessageStoreCallerInfoRequest]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(from: MessageStoreCallerInfoRequest? = nil, replyOn: Int? = nil, text: String? = nil, to: [MessageStoreCallerInfoRequest]? = nil) {
        self.init()
        self.from = `from`
        self.replyOn = `replyOn`
        self.text = `text`
        self.to = `to`
    }
    open func mapping(map: Map) {
        `from` <- map["from"]
        `replyOn` <- map["replyOn"]
        `text` <- map["text"]
        `to` <- map["to"]
    }
}
