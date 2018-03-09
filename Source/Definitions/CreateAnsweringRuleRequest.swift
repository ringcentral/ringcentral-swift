import Foundation
import ObjectMapper
open class CreateAnsweringRuleRequest: Mappable {
    /*
    Type of an answering rule. The 'Custom' value should be specified
    */
    open var `type`: String?
    /*
    Name of an answering rule specified by user
    */
    open var `name`: String?
    /*
    Answering rule will be applied when calls are received from the specified caller(s)
    */
    open var `callers`: [CallersInfoRequest]?
    /*
    Forwarding parameters. Should be specified if the 'callHandlingAction' parameter value is set to 'ForwardCalls'. These settings determine the forwarding numbers to which the call should be forwarded
    */
    open var `forwarding`: ForwardingInfoCreateRuleRequest?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(type: String? = nil, name: String? = nil, callers: [CallersInfoRequest]? = nil, forwarding: ForwardingInfoCreateRuleRequest? = nil) {
        self.init()
        self.type = `type`
        self.name = `name`
        self.callers = `callers`
        self.forwarding = `forwarding`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `name` <- map["name"]
        `callers` <- map["callers"]
        `forwarding` <- map["forwarding"]
    }
}
