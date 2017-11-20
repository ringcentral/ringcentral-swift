import Foundation
import ObjectMapper
open class ForwardingInfoCreateRuleRequest: Mappable {
    /*
    Information on a call forwarding rule
    */
    open var `rules`: [RuleInfoCreateRuleRequest]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(rules: [RuleInfoCreateRuleRequest]? = nil) {
        self.init()
        self.rules = `rules`
    }
    open func mapping(map: Map) {
        `rules` <- map["rules"]
    }
}
