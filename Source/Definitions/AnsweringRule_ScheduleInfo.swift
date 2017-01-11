import Foundation
import ObjectMapper
open class AnsweringRule_ScheduleInfo: Mappable {
    // Weekly schedule. If specified, ranges cannot be specified
    open var `weeklyRanges`: WeeklyScheduleInfo?
    // Specific data ranges. If specified, weeklyRanges cannot be specified
    open var `ranges`: RangesInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(weeklyRanges: WeeklyScheduleInfo? = nil, ranges: RangesInfo? = nil) {
        self.init()
        self.weeklyRanges = `weeklyRanges`
        self.ranges = `ranges`
    }
    open func mapping(map: Map) {
        `weeklyRanges` <- map["weeklyRanges"]
        `ranges` <- map["ranges"]
    }
}
