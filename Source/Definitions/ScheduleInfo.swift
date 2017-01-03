import Foundation
import ObjectMapper
open class ScheduleInfo: Definition {
    // Weekly schedule
    open var `weeklyRanges`: WeeklyScheduleInfo?
    // Specific data ranges
    open var `ranges`: RangesInfo?
    // The user's schedule specified for business hours or after hours; it can also be set/retrieved calling the corresponding method
    open var `ref`: String?
    convenience public init(weeklyRanges: WeeklyScheduleInfo? = nil, ranges: RangesInfo? = nil, ref: String? = nil) {
        self.init()
        self.weeklyRanges = `weeklyRanges`
        self.ranges = `ranges`
        self.ref = `ref`
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
        `ref` <- map["ref"]
    }
}
