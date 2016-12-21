import Foundation
import ObjectMapper
import Alamofire
open class VoicemailInfo: Mappable {
    // If 'True' then voicemails are allowed to be received
    open var `enabled`: Bool?
    // Recipient data
    open var `recipient`: RecipientInfo?
    public init() {
    }
    convenience public init(enabled: Bool? = nil, recipient: RecipientInfo? = nil) {
        self.init()
        self.enabled = `enabled`
        self.recipient = `recipient`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `enabled` <- map["enabled"]
        `recipient` <- map["recipient"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
