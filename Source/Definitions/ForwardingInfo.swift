import Foundation
import ObjectMapper
open class ForwardingInfo: Definition {
    // Specifies if the user's softphone(s) are notified before forwarding the incoming call to desk phones and forwarding numbers
    open var `notifyMySoftPhones`: Bool?
    // Specifies if the administrator's softphone is notified before forwarding the incoming call to desk phones and forwarding numbers. The default value is 'False'
    open var `notifyAdminSoftPhones`: Bool?
    // Number of rings before forwarding starts
    open var `softPhonesRingCount`: Int?
    // Specifies the order in which forwarding numbers ring. 'Sequentially' means that forwarding numbers are ringing one at a time, in order of priority. 'Simultaneously' means that forwarding numbers are ring all at the same time
    open var `ringingMode`: String?
    // Information on a call forwarding rule
    open var `rules`: [RuleInfo]?
    convenience public init(notifyMySoftPhones: Bool? = nil, notifyAdminSoftPhones: Bool? = nil, softPhonesRingCount: Int? = nil, ringingMode: String? = nil, rules: [RuleInfo]? = nil) {
        self.init()
        self.notifyMySoftPhones = `notifyMySoftPhones`
        self.notifyAdminSoftPhones = `notifyAdminSoftPhones`
        self.softPhonesRingCount = `softPhonesRingCount`
        self.ringingMode = `ringingMode`
        self.rules = `rules`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `notifyMySoftPhones` <- map["notifyMySoftPhones"]
        `notifyAdminSoftPhones` <- map["notifyAdminSoftPhones"]
        `softPhonesRingCount` <- map["softPhonesRingCount"]
        `ringingMode` <- map["ringingMode"]
        `rules` <- map["rules"]
    }
}
