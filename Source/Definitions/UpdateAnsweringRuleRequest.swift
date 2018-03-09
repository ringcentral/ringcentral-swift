import Foundation
import ObjectMapper
open class UpdateAnsweringRuleRequest: Mappable {
    /*
    Forwarding parameters. Returned if 'ForwardCalls' is specified in 'callHandlingAction'. These settings determine the forwarding numbers to which the call will be forwarded
    */
    open var `forwarding`: ForwardingInfoCreateRuleRequest?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(forwarding: ForwardingInfoCreateRuleRequest? = nil) {
        self.init()
        self.forwarding = `forwarding`
    }
    open func mapping(map: Map) {
        `forwarding` <- map["forwarding"]
    }
}
