import Foundation
import ObjectMapper
open class VoicemailSettingsResource: Mappable {
    /*
    */
    open var `enabled`: Bool?
    /*
    */
    open var `recipient`: ExtensionResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(enabled: Bool? = nil, recipient: ExtensionResource? = nil) {
        self.init()
        self.enabled = `enabled`
        self.recipient = `recipient`
    }
    open func mapping(map: Map) {
        `enabled` <- map["enabled"]
        `recipient` <- map["recipient"]
    }
}
