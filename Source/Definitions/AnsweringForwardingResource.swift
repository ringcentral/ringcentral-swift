import Foundation
import ObjectMapper
open class AnsweringForwardingResource: Mappable {
    /*
    */
    open var `notifyMySoftPhones`: Bool?
    /*
    */
    open var `notifyAdminSoftPhones`: Bool?
    /*
    */
    open var `softPhonesRingCount`: Int?
    /*
    */
    open var `ringingMode`: String?
    /*
    */
    open var `rules`: [AnsweringForwardingRuleResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(notifyMySoftPhones: Bool? = nil, notifyAdminSoftPhones: Bool? = nil, softPhonesRingCount: Int? = nil, ringingMode: String? = nil, rules: [AnsweringForwardingRuleResource]? = nil) {
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
