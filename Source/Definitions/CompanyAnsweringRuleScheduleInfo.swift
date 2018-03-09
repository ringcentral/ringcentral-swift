import Foundation
import ObjectMapper
open class CompanyAnsweringRuleScheduleInfo: Mappable {
    /*
    Weekly schedule. If specified, ranges cannot be specified
    */
    open var `weeklyRanges`: CompanyAnsweringRuleWeeklyScheduleInfoRequest?
    /*
    Specific data ranges. If specified, weeklyRanges cannot be specified
    */
    open var `ranges`: RangesInfo?
    /*
    Reference to Business Hours or After Hours schedule = ['BusinessHours', 'AfterHours']
    */
    open var `ref`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(weeklyRanges: CompanyAnsweringRuleWeeklyScheduleInfoRequest? = nil, ranges: RangesInfo? = nil, ref: String? = nil) {
        self.init()
        self.weeklyRanges = `weeklyRanges`
        self.ranges = `ranges`
        self.ref = `ref`
    }
    open func mapping(map: Map) {
        `weeklyRanges` <- map["weeklyRanges"]
        `ranges` <- map["ranges"]
        `ref` <- map["ref"]
    }
}
