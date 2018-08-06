import Foundation
import ObjectMapper
open class RuleInfoCreateRuleRequest: Mappable {
    /*
    Forwarding number (or group) ordinal. Not returned for inactive numbers
    */
    open var `index`: Int?
    /*
    Number of rings for a forwarding number (or group). For inactive numbers the default value ('4') is returned
    */
    open var `ringCount`: Int?
    /*
    Phone number status. Returned only if `showInactiveNumbers` is set to `true`
    */
    open var `enabled`: Bool?
    /*
    Forwarding number (or group) data
    */
    open var `forwardingNumbers`: [ForwardingNumberInfoRulesCreateRuleRequest]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(index: Int? = nil, ringCount: Int? = nil, enabled: Bool? = nil, forwardingNumbers: [ForwardingNumberInfoRulesCreateRuleRequest]? = nil) {
        self.init()
        self.index = `index`
        self.ringCount = `ringCount`
        self.enabled = `enabled`
        self.forwardingNumbers = `forwardingNumbers`
    }
    open func mapping(map: Map) {
        `index` <- map["index"]
        `ringCount` <- map["ringCount"]
        `enabled` <- map["enabled"]
        `forwardingNumbers` <- map["forwardingNumbers"]
    }
}
