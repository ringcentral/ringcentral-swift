import Foundation
import ObjectMapper
import Alamofire
open class SmsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "sms"
        }
    }
    /*
    Create and Send SMS Message. Creates and sends new SMS message. Sending SMS messages simultaneously to different recipients is limited up to 50 requests per minute; relevant for all client applications.
    */
    open func post(callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Create and Send SMS Message. Creates and sends new SMS message. Sending SMS messages simultaneously to different recipients is limited up to 50 requests per minute; relevant for all client applications.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Create and Send SMS Message. Creates and sends new SMS message. Sending SMS messages simultaneously to different recipients is limited up to 50 requests per minute; relevant for all client applications.
    */
    open func post(parameters: PostParameters, callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        /*
        Sender of an SMS message. The phoneNumber property must be filled to correspond to one of the account phone numbers which is allowed to send SMS
        */
        open var `from`: CallerInfo?
        /*
        Receiver of an SMS message. The phoneNumber property must be filled
        */
        open var `to`: [CallerInfo]?
        /*
        Text of a message. Max length is 1000 symbols (2-byte UTF-16 encoded). If a character is encoded in 4 bytes in UTF-16 it is treated as 2 characters, thus restricting the maximum message length to 500 symbols
        */
        open var `text`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(from: CallerInfo? = nil, to: [CallerInfo]? = nil, text: String? = nil) {
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
}
