import Foundation
import ObjectMapper
import Alamofire
open class CompanyPagerPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "company-pager"
        }
    }
    /*
    Create and Send Pager Message.
    */
    open func post(callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Create and Send Pager Message.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Create and Send Pager Message.
    */
    open func post(parameters: PostParameters, callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        /*
        Sender of a pager message. The extensionNumber property must be filled
        */
        open var `from`: CallerInfo?
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
        open var `to`: [CallerInfo]?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(from: CallerInfo? = nil, replyOn: Int? = nil, text: String? = nil, to: [CallerInfo]? = nil) {
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
}
