import Foundation
import ObjectMapper
open class CompanyAnsweringRuleWeeklyScheduleInfoRequest: Mappable {
    /*
    Time interval for a particular day
    */
    open var `monday`: [CompanyAnsweringRuleTimeIntervalRequest]?
    /*
    Time interval for a particular day
    */
    open var `tuesday`: [CompanyAnsweringRuleTimeIntervalRequest]?
    /*
    Time interval for a particular day
    */
    open var `wednesday`: [CompanyAnsweringRuleTimeIntervalRequest]?
    /*
    Time interval for a particular day
    */
    open var `thursday`: [CompanyAnsweringRuleTimeIntervalRequest]?
    /*
    Time interval for a particular day
    */
    open var `friday`: [CompanyAnsweringRuleTimeIntervalRequest]?
    /*
    Time interval for a particular day
    */
    open var `saturday`: [CompanyAnsweringRuleTimeIntervalRequest]?
    /*
    Time interval for a particular day
    */
    open var `sunday`: [CompanyAnsweringRuleTimeIntervalRequest]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(monday: [CompanyAnsweringRuleTimeIntervalRequest]? = nil, tuesday: [CompanyAnsweringRuleTimeIntervalRequest]? = nil, wednesday: [CompanyAnsweringRuleTimeIntervalRequest]? = nil, thursday: [CompanyAnsweringRuleTimeIntervalRequest]? = nil, friday: [CompanyAnsweringRuleTimeIntervalRequest]? = nil, saturday: [CompanyAnsweringRuleTimeIntervalRequest]? = nil, sunday: [CompanyAnsweringRuleTimeIntervalRequest]? = nil) {
        self.init()
        self.monday = `monday`
        self.tuesday = `tuesday`
        self.wednesday = `wednesday`
        self.thursday = `thursday`
        self.friday = `friday`
        self.saturday = `saturday`
        self.sunday = `sunday`
    }
    open func mapping(map: Map) {
        `monday` <- map["monday"]
        `tuesday` <- map["tuesday"]
        `wednesday` <- map["wednesday"]
        `thursday` <- map["thursday"]
        `friday` <- map["friday"]
        `saturday` <- map["saturday"]
        `sunday` <- map["sunday"]
    }
}
