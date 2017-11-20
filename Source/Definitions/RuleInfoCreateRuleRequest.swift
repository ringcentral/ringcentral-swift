import Foundation
import ObjectMapper
open class RuleInfoCreateRuleRequest: Mappable {
    /*
    Forwarding number (or group) ordinal
    */
    open var `index`: Int?
    /*
    Number of rings for a forwarding number (or group)
    */
    open var `ringCount`: Int?
    /*
    Forwarding number (or group) data
    */
    open var `forwardingNumbers`: [ForwardingNumberInfoRulesCreateRuleRequest]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(index: Int? = nil, ringCount: Int? = nil, forwardingNumbers: [ForwardingNumberInfoRulesCreateRuleRequest]? = nil) {
        self.init()
        self.index = `index`
        self.ringCount = `ringCount`
        self.forwardingNumbers = `forwardingNumbers`
    }
    open func mapping(map: Map) {
        `index` <- map["index"]
        `ringCount` <- map["ringCount"]
        `forwardingNumbers` <- map["forwardingNumbers"]
    }
}
