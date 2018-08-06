import Foundation
import ObjectMapper
open class UpdateAnsweringRuleRequest: Mappable {
    /*
    Forwarding parameters. Returned if 'ForwardCalls' is specified in 'callHandlingAction'. These settings determine the forwarding numbers to which the call will be forwarded
    */
    open var `forwarding`: ForwardingInfoCreateRuleRequest?
    /*
    Specifies if the rule is active or inactive. The default value is 'True'
    */
    open var `enabled`: Bool?
    /*
    Name of an answering rule specified by user
    */
    open var `name`: String?
    /*
    Answering rule will be applied when calls are received from the specified caller(s)
    */
    open var `callers`: [CallersInfoRequest]?
    /*
    Answering rules are applied when calling to selected number(s)
    */
    open var `calledNumbers`: [CalledNumberInfo]?
    /*
    Schedule when an answering rule should be applied
    */
    open var `schedule`: ScheduleInfo?
    /*
    Specifies how incoming calls are forwarded
    */
    open var `callHandlingAction`: String?
    /*
    Unconditional forwarding parameters. Returned if 'UnconditionalForwarding' is specified in 'callHandlingAction'
    */
    open var `unconditionalForwarding`: UnconditionalForwardingInfo?
    /*
    Queue settings applied for department (call queue) extension type, with the 'AgentQueue' value specified as a call handling action
    */
    open var `queue`: QueueInfo?
    /*
    Specifies whether to take a voicemail and who should do it
    */
    open var `voicemail`: VoicemailInfo?
    /*
    Greetings applied for an answering rule; only predefined greetings can be applied, see Dictionary Greeting List
    */
    open var `greetings`: [GreetingInfo]?
    /*
    Call screening status. 'Off' - no call screening; 'NoCallerId' - if caller ID is missing, then callers are asked to say their name before connecting; 'UnknownCallerId' - if caller ID is not in contact list, then callers are asked to say their name before connecting; 'Always' - the callers are always asked to say their name before connecting. The default value is 'Off'
    */
    open var `screening`: String?
    /*
    Indicates whether inactive numbers should be returned or not.
    */
    open var `showInactiveNumbers`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(forwarding: ForwardingInfoCreateRuleRequest? = nil, enabled: Bool? = nil, name: String? = nil, callers: [CallersInfoRequest]? = nil, calledNumbers: [CalledNumberInfo]? = nil, schedule: ScheduleInfo? = nil, callHandlingAction: String? = nil, unconditionalForwarding: UnconditionalForwardingInfo? = nil, queue: QueueInfo? = nil, voicemail: VoicemailInfo? = nil, greetings: [GreetingInfo]? = nil, screening: String? = nil, showInactiveNumbers: Bool? = nil) {
        self.init()
        self.forwarding = `forwarding`
        self.enabled = `enabled`
        self.name = `name`
        self.callers = `callers`
        self.calledNumbers = `calledNumbers`
        self.schedule = `schedule`
        self.callHandlingAction = `callHandlingAction`
        self.unconditionalForwarding = `unconditionalForwarding`
        self.queue = `queue`
        self.voicemail = `voicemail`
        self.greetings = `greetings`
        self.screening = `screening`
        self.showInactiveNumbers = `showInactiveNumbers`
    }
    open func mapping(map: Map) {
        `forwarding` <- map["forwarding"]
        `enabled` <- map["enabled"]
        `name` <- map["name"]
        `callers` <- map["callers"]
        `calledNumbers` <- map["calledNumbers"]
        `schedule` <- map["schedule"]
        `callHandlingAction` <- map["callHandlingAction"]
        `unconditionalForwarding` <- map["unconditionalForwarding"]
        `queue` <- map["queue"]
        `voicemail` <- map["voicemail"]
        `greetings` <- map["greetings"]
        `screening` <- map["screening"]
        `showInactiveNumbers` <- map["showInactiveNumbers"]
    }
}
