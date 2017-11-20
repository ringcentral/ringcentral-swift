import Foundation
import ObjectMapper
open class AnsweringRuleResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `type`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `enabled`: Bool?
    /*
    */
    open var `schedule`: ScheduleResource?
    /*
    */
    open var `callers`: [CallerResource]?
    /*
    */
    open var `calledNumbers`: [PhoneNumberResource]?
    /*
    */
    open var `callHandlingAction`: String?
    /*
    */
    open var `forwarding`: AnsweringForwardingResource?
    /*
    */
    open var `unconditionalForwarding`: UnconditionalForwardingResource?
    /*
    */
    open var `voicemail`: VoicemailSettingsResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, type: String? = nil, name: String? = nil, enabled: Bool? = nil, schedule: ScheduleResource? = nil, callers: [CallerResource]? = nil, calledNumbers: [PhoneNumberResource]? = nil, callHandlingAction: String? = nil, forwarding: AnsweringForwardingResource? = nil, unconditionalForwarding: UnconditionalForwardingResource? = nil, voicemail: VoicemailSettingsResource? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.type = `type`
        self.name = `name`
        self.enabled = `enabled`
        self.schedule = `schedule`
        self.callers = `callers`
        self.calledNumbers = `calledNumbers`
        self.callHandlingAction = `callHandlingAction`
        self.forwarding = `forwarding`
        self.unconditionalForwarding = `unconditionalForwarding`
        self.voicemail = `voicemail`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `type` <- map["type"]
        `name` <- map["name"]
        `enabled` <- map["enabled"]
        `schedule` <- map["schedule"]
        `callers` <- map["callers"]
        `calledNumbers` <- map["calledNumbers"]
        `callHandlingAction` <- map["callHandlingAction"]
        `forwarding` <- map["forwarding"]
        `unconditionalForwarding` <- map["unconditionalForwarding"]
        `voicemail` <- map["voicemail"]
    }
}
