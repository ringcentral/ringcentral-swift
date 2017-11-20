import Foundation
import ObjectMapper
open class CompanyBusinessHoursScheduleInfo: Mappable {
    /*
    */
    open var `weeklyRanges`: WeeklyScheduleInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(weeklyRanges: WeeklyScheduleInfo? = nil) {
        self.init()
        self.weeklyRanges = `weeklyRanges`
    }
    open func mapping(map: Map) {
        `weeklyRanges` <- map["weeklyRanges"]
    }
}
