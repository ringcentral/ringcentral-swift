import Foundation
import ObjectMapper
import Alamofire
open class MmsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "sms"
        }
    }
    open class PostParameters: Mappable {
        // Sender information. Phone number property is mandatory.
        open var `from`: CallerInfo?
        // Recipient information. Phone number property is mandatory. Optional for resend fax request
        open var `to`: [CallerInfo]?
        // MMS text
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
