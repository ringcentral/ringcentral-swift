import Foundation
import ObjectMapper
open class PresenceLineEvent: Definition {
    // Extension information
    open var `extension`: PresenceLineEvent_ExtensionInfo?
    // Order number of a notification to state the chronology
    open var `sequence`: Int?
    convenience public init(extension: PresenceLineEvent_ExtensionInfo? = nil, sequence: Int? = nil) {
        self.init()
        self.extension = `extension`
        self.sequence = `sequence`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `extension` <- map["extension"]
        `sequence` <- map["sequence"]
    }
}
