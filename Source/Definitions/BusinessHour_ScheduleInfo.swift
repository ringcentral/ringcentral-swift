import Foundation
import ObjectMapper
open class BusinessHour_ScheduleInfo: Definition {
    // Weekly schedule
    open var `weeklyRanges`: WeeklyScheduleInfo?
    convenience public init(weeklyRanges: WeeklyScheduleInfo? = nil) {
        self.init()
        self.weeklyRanges = `weeklyRanges`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `weeklyRanges` <- map["weeklyRanges"]
    }
}
