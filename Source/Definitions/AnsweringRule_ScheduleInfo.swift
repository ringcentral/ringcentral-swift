import Foundation
import ObjectMapper
open class AnsweringRule_ScheduleInfo: Definition {
    // Weekly schedule. If specified, ranges cannot be specified
    open var `weeklyRanges`: WeeklyScheduleInfo?
    // Specific data ranges. If specified, weeklyRanges cannot be specified
    open var `ranges`: RangesInfo?
    convenience public init(weeklyRanges: WeeklyScheduleInfo? = nil, ranges: RangesInfo? = nil) {
        self.init()
        self.weeklyRanges = `weeklyRanges`
        self.ranges = `ranges`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `weeklyRanges` <- map["weeklyRanges"]
        `ranges` <- map["ranges"]
    }
}
