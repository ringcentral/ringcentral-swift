import Foundation
import ObjectMapper
import Alamofire
open class PresenceLineEvent: Mappable {
    // Extension information
    open var `extension`: PresenceLineEvent_ExtensionInfo?
    // Order number of a notification to state the chronology
    open var `sequence`: Int?
    public init() {
    }
    convenience public init(extension: PresenceLineEvent_ExtensionInfo? = nil, sequence: Int? = nil) {
        self.init()
        self.extension = `extension`
        self.sequence = `sequence`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `extension` <- map["extension"]
        `sequence` <- map["sequence"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
