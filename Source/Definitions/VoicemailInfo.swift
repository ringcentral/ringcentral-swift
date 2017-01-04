import Foundation
import ObjectMapper
open class VoicemailInfo: Mappable {
    // If 'True' then voicemails are allowed to be received
    open var `enabled`: Bool?
    // Recipient data
    open var `recipient`: RecipientInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(enabled: Bool? = nil, recipient: RecipientInfo? = nil) {
        self.init()
        self.enabled = `enabled`
        self.recipient = `recipient`
    }
    open func mapping(map: Map) {
        `enabled` <- map["enabled"]
        `recipient` <- map["recipient"]
    }
}
