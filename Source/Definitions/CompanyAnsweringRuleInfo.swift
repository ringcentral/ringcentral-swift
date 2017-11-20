import Foundation
import ObjectMapper
open class CompanyAnsweringRuleInfo: Mappable {
    /*
    Internal identifier of an answering rule
    */
    open var `id`: String?
    /*
    Canonical URI of an answering rule
    */
    open var `uri`: String?
    /*
    Specifies if the rule is active or inactive. The default value is 'True'
    */
    open var `enabled`: Bool?
    /*
    Type of an answering rule, the default value is 'Custom' = ['BusinessHours', 'AfterHours', 'Custom']
    */
    open var `type`: String?
    /*
    Name of an answering rule specified by user. Max number of symbols is 30. The default value is 'My Rule N' where 'N' is the first free number
    */
    open var `name`: String?
    /*
    Answering rule will be applied when calls are received from the specified caller(s)
    */
    open var `callers`: [CompanyAnsweringRuleCallersInfoRequest]?
    /*
    Answering rule will be applied when calling the specified number(s)
    */
    open var `calledNumbers`: [CompanyAnsweringRuleCalledNumberInfoRequest]?
    /*
    Schedule when an answering rule should be applied ,
    */
    open var `schedule`: CompanyAnsweringRuleScheduleInfo?
    /*
    Specifies how incoming calls are forwarded. The default value is 'Operator' 'Operator' - play company greeting and forward to operator extension 'Disconnect' - play company greeting and disconnect 'Bypass' - bypass greeting to go to selected extension = ['Operator', 'Disconnect', 'Bypass']
    */
    open var `callHandlingAction`: String?
    /*
    Extension to which the call is forwarded in 'Bypass' mode
    */
    open var `extension`: CompanyAnsweringRuleCallersInfoRequest?
    /*
    Greetings applied for an answering rule; only predefined greetings can be applied, see Dictionary Greeting List
    */
    open var `greetings`: [GreetingInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, enabled: Bool? = nil, type: String? = nil, name: String? = nil, callers: [CompanyAnsweringRuleCallersInfoRequest]? = nil, calledNumbers: [CompanyAnsweringRuleCalledNumberInfoRequest]? = nil, schedule: CompanyAnsweringRuleScheduleInfo? = nil, callHandlingAction: String? = nil, extension: CompanyAnsweringRuleCallersInfoRequest? = nil, greetings: [GreetingInfo]? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.enabled = `enabled`
        self.type = `type`
        self.name = `name`
        self.callers = `callers`
        self.calledNumbers = `calledNumbers`
        self.schedule = `schedule`
        self.callHandlingAction = `callHandlingAction`
        self.extension = `extension`
        self.greetings = `greetings`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `enabled` <- map["enabled"]
        `type` <- map["type"]
        `name` <- map["name"]
        `callers` <- map["callers"]
        `calledNumbers` <- map["calledNumbers"]
        `schedule` <- map["schedule"]
        `callHandlingAction` <- map["callHandlingAction"]
        `extension` <- map["extension"]
        `greetings` <- map["greetings"]
    }
}
