import Foundation
import ObjectMapper
open class VoicemailInfo: Definition {
    // If 'True' then voicemails are allowed to be received
    open var `enabled`: Bool?
    // Recipient data
    open var `recipient`: RecipientInfo?
    convenience public init(enabled: Bool? = nil, recipient: RecipientInfo? = nil) {
        self.init()
        self.enabled = `enabled`
        self.recipient = `recipient`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `enabled` <- map["enabled"]
        `recipient` <- map["recipient"]
    }
}
