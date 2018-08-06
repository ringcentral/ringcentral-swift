import Foundation
import ObjectMapper
open class ForwardingInfoCreateRuleRequest: Mappable {
    /*
    Specifies if the first ring on desktop/mobile apps is enabled. The default value is 'True'
    */
    open var `notifyMySoftPhones`: Bool?
    /*
    Specifies if the administrator's softphone (desktop application) is notified before forwarding the incoming call to desk phones and forwarding numbers. The default value is 'True'
    */
    open var `notifyAdminSoftPhones`: Bool?
    /*
    Specifies delay between ring on apps and starting of a call forwarding. The default value is 1
    */
    open var `softPhonesRingCount`: Int?
    /*
    Specifies the order in which forwarding numbers ring. 'Sequentially' means that forwarding numbers are ringing one at a time, in order of priority. 'Simultaneously' means that forwarding numbers are ringing all at the same time. The default value is 'Sequentially'
    */
    open var `ringingMode`: String?
    /*
    Information on a call forwarding rule
    */
    open var `rules`: [RuleInfoCreateRuleRequest]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(notifyMySoftPhones: Bool? = nil, notifyAdminSoftPhones: Bool? = nil, softPhonesRingCount: Int? = nil, ringingMode: String? = nil, rules: [RuleInfoCreateRuleRequest]? = nil) {
        self.init()
        self.notifyMySoftPhones = `notifyMySoftPhones`
        self.notifyAdminSoftPhones = `notifyAdminSoftPhones`
        self.softPhonesRingCount = `softPhonesRingCount`
        self.ringingMode = `ringingMode`
        self.rules = `rules`
    }
    open func mapping(map: Map) {
        `notifyMySoftPhones` <- map["notifyMySoftPhones"]
        `notifyAdminSoftPhones` <- map["notifyAdminSoftPhones"]
        `softPhonesRingCount` <- map["softPhonesRingCount"]
        `ringingMode` <- map["ringingMode"]
        `rules` <- map["rules"]
    }
}
