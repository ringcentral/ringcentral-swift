import Foundation
import ObjectMapper
open class OptionInfo: Mappable {
    /*
    Specifies if the feature is allowed ('True') or disallowed ('False') for the special number
    */
    open var `enabled`: Bool?
    /*
    The reason explaining why the option is disallowed. Returned if the value of enabled is 'False'
    */
    open var `reason`: OptionInfoReason?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(enabled: Bool? = nil, reason: OptionInfoReason? = nil) {
        self.init()
        self.enabled = `enabled`
        self.reason = `reason`
    }
    open func mapping(map: Map) {
        `enabled` <- map["enabled"]
        `reason` <- map["reason"]
    }
}
