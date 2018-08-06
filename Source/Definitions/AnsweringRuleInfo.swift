import Foundation
import ObjectMapper
open class AnsweringRuleInfo: Mappable {
    /*
    Canonical URI to the answering rule resource
    */
    open var `uri`: String?
    /*
    Internal identifier of an answering rule
    */
    open var `id`: String?
    /*
    Type of an answering rule
    */
    open var `type`: String?
    /*
    Name of an answering rule specified by user
    */
    open var `name`: String?
    /*
    Specifies if an answering rule is active or inactive
    */
    open var `enabled`: Bool?
    /*
    Schedule when an answering rule should be applied
    */
    open var `schedule`: ScheduleInfo?
    /*
    Answering rules are applied when calling to selected number(s)
    */
    open var `calledNumbers`: [CalledNumberInfo]?
    /*
    Answering rules are applied when calls are received from specified caller(s)
    */
    open var `callers`: [CallersInfo]?
    /*
    Specifies how incoming calls are forwarded
    */
    open var `callHandlingAction`: String?
    /*
    Forwarding parameters. Returned if 'ForwardCalls' is specified in 'callHandlingAction'. These settings determine the forwarding numbers to which the call will be forwarded
    */
    open var `forwarding`: ForwardingInfo?
    /*
    Unconditional forwarding parameters. Returned if 'UnconditionalForwarding' is specified in 'callHandlingAction'
    */
    open var `unconditionalForwarding`: UnconditionalForwardingInfo?
    /*
    Queue settings applied for department (call queue) extension type, with the 'AgentQueue' value specified as a call handling action
    */
    open var `queue`: QueueInfo?
    /*
    Transfer settings applied for department (call queue) extension type, with 'TransferToExtension' call handling action
    */
    open var `transfer`: TransferredExtensionInfo?
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
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, type: String? = nil, name: String? = nil, enabled: Bool? = nil, schedule: ScheduleInfo? = nil, calledNumbers: [CalledNumberInfo]? = nil, callers: [CallersInfo]? = nil, callHandlingAction: String? = nil, forwarding: ForwardingInfo? = nil, unconditionalForwarding: UnconditionalForwardingInfo? = nil, queue: QueueInfo? = nil, transfer: TransferredExtensionInfo? = nil, voicemail: VoicemailInfo? = nil, greetings: [GreetingInfo]? = nil, screening: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.type = `type`
        self.name = `name`
        self.enabled = `enabled`
        self.schedule = `schedule`
        self.calledNumbers = `calledNumbers`
        self.callers = `callers`
        self.callHandlingAction = `callHandlingAction`
        self.forwarding = `forwarding`
        self.unconditionalForwarding = `unconditionalForwarding`
        self.queue = `queue`
        self.transfer = `transfer`
        self.voicemail = `voicemail`
        self.greetings = `greetings`
        self.screening = `screening`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `type` <- map["type"]
        `name` <- map["name"]
        `enabled` <- map["enabled"]
        `schedule` <- map["schedule"]
        `calledNumbers` <- map["calledNumbers"]
        `callers` <- map["callers"]
        `callHandlingAction` <- map["callHandlingAction"]
        `forwarding` <- map["forwarding"]
        `unconditionalForwarding` <- map["unconditionalForwarding"]
        `queue` <- map["queue"]
        `transfer` <- map["transfer"]
        `voicemail` <- map["voicemail"]
        `greetings` <- map["greetings"]
        `screening` <- map["screening"]
    }
}
