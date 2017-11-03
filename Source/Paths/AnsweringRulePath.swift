import Foundation
import ObjectMapper
import Alamofire
open class AnsweringRulePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "answering-rule"
        }
    }
    /*
    Returns the extension answering rules.
    */
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        /*
        Canonical URI of an answering rule resource
        */
        open var `uri`: String?
        /*
        List of answering rules
        */
        open var `records`: [AnsweringRuleInfo]?
        /*
        Information on paging
        */
        open var `paging`: PagingInfo?
        /*
        Information on navigation
        */
        open var `navigation`: NavigationInfo?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(uri: String? = nil, records: [AnsweringRuleInfo]? = nil, paging: PagingInfo? = nil, navigation: NavigationInfo? = nil) {
            self.init()
            self.uri = `uri`
            self.records = `records`
            self.paging = `paging`
            self.navigation = `navigation`
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `records` <- map["records"]
            `paging` <- map["paging"]
            `navigation` <- map["navigation"]
        }
    }
    /*
    Creates a custom answering rule for a particular caller ID.
    */
    open func post(callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a custom answering rule for a particular caller ID.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a custom answering rule for a particular caller ID.
    */
    open func post(parameters: PostParameters, callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        /*
        Specifies if the rule is active or inactive. The default value is 'True'
        */
        open var `enabled`: Bool?
        /*
        Type of an answering rule, the supported value is 'Custom'
        */
        open var `type`: String?
        /*
        Name of an answering rule specified by user. Max number of symbols is 30
        */
        open var `name`: String?
        /*
        Answering rule will be applied when calls are received from the specified caller(s)
        */
        open var `callers`: [CallersInfo]?
        /*
        Answering rule will be applied when calling the specified number(s)
        */
        open var `calledNumbers`: [CalledNumberInfo]?
        /*
        Schedule when an answering rule should be applied
        */
        open var `schedule`: AnsweringRule_ScheduleInfo?
        /*
        Specifies how incoming calls should be forwarded. The default value is 'ForwardCalls'
        */
        open var `callHandlingAction`: String?
        /*
        Forwarding parameters. If the 'callHandlingAction' parameter value is set to 'ForwardCalls' - should be specified . The settings determine the forwarding numbers to which the call should be forwarded. If not specified in request, then the business-hours forwarding rules are set by default
        */
        open var `forwarding`: ForwardingInfo?
        /*
        Unconditional forwarding parameters. If the 'callHandlingAction' parameter value is set to 'UnconditionalForwarding' - should be specified
        */
        open var `unconditionalForwarding`: UnconditionalForwardingInfo?
        /*
        Specifies whether to take a voicemail and who should do it
        */
        open var `voiceMail`: VoicemailInfo?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(enabled: Bool? = nil, type: String? = nil, name: String? = nil, callers: [CallersInfo]? = nil, calledNumbers: [CalledNumberInfo]? = nil, schedule: AnsweringRule_ScheduleInfo? = nil, callHandlingAction: String? = nil, forwarding: ForwardingInfo? = nil, unconditionalForwarding: UnconditionalForwardingInfo? = nil, voiceMail: VoicemailInfo? = nil) {
            self.init()
            self.enabled = `enabled`
            self.type = `type`
            self.name = `name`
            self.callers = `callers`
            self.calledNumbers = `calledNumbers`
            self.schedule = `schedule`
            self.callHandlingAction = `callHandlingAction`
            self.forwarding = `forwarding`
            self.unconditionalForwarding = `unconditionalForwarding`
            self.voiceMail = `voiceMail`
        }
        open func mapping(map: Map) {
            `enabled` <- map["enabled"]
            `type` <- map["type"]
            `name` <- map["name"]
            `callers` <- map["callers"]
            `calledNumbers` <- map["calledNumbers"]
            `schedule` <- map["schedule"]
            `callHandlingAction` <- map["callHandlingAction"]
            `forwarding` <- map["forwarding"]
            `unconditionalForwarding` <- map["unconditionalForwarding"]
            `voiceMail` <- map["voiceMail"]
        }
    }
    /*
    Returns an answering rule by ID.
    */
    open func get(callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Updates a custom answering rule for a particular caller ID.
    */
    open func put(callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Updates a custom answering rule for a particular caller ID.
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Updates a custom answering rule for a particular caller ID.
    */
    open func put(parameters: PutParameters, callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    open class PutParameters: Mappable {
        /*
        Specifies if the answering rule is active or not
        */
        open var `enabled`: Bool?
        /*
        Custom name of an answering rule. The maximum number of characters is 64
        */
        open var `name`: String?
        /*
        Forwarding parameters. Returned if 'ForwardCalls' is specified in 'callHandlingAction'. These settings determine the forwarding numbers to which the call will be forwarded
        */
        open var `forwarding`: ForwardingInfo?
        /*
        Predefined greetings applied for an answering rule
        */
        open var `greetings`: [GreetingInfo]?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(enabled: Bool? = nil, name: String? = nil, forwarding: ForwardingInfo? = nil, greetings: [GreetingInfo]? = nil) {
            self.init()
            self.enabled = `enabled`
            self.name = `name`
            self.forwarding = `forwarding`
            self.greetings = `greetings`
        }
        open func mapping(map: Map) {
            `enabled` <- map["enabled"]
            `name` <- map["name"]
            `forwarding` <- map["forwarding"]
            `greetings` <- map["greetings"]
        }
    }
    /*
    Deletes a custom answering rule by a particular ID.
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
