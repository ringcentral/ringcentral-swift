import Foundation
import ObjectMapper
open class UserBusinessHoursUpdateRequest: Mappable {
    /*
    Schedule when an answering rule is applied
    */
    open var `schedule`: WeeklyScheduleInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(schedule: WeeklyScheduleInfo? = nil) {
        self.init()
        self.schedule = `schedule`
    }
    open func mapping(map: Map) {
        `schedule` <- map["schedule"]
    }
}
