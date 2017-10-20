import Foundation
import ObjectMapper
open class PresenceLineEvent: Mappable {
    /*
    Extension information
    */
    open var `extension`: PresenceLineEvent_ExtensionInfo?
    /*
    Order number of a notification to state the chronology
    */
    open var `sequence`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(extension: PresenceLineEvent_ExtensionInfo? = nil, sequence: Int? = nil) {
        self.init()
        self.extension = `extension`
        self.sequence = `sequence`
    }
    open func mapping(map: Map) {
        `extension` <- map["extension"]
        `sequence` <- map["sequence"]
    }
}
