import Foundation
import ObjectMapper
open class CompanyBusinessHoursUpdateRequest: Mappable {
    /*
    Schedule when an answering rule is applied
    */
    open var `schedule`: CompanyBusinessHoursScheduleInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(schedule: CompanyBusinessHoursScheduleInfo? = nil) {
        self.init()
        self.schedule = `schedule`
    }
    open func mapping(map: Map) {
        `schedule` <- map["schedule"]
    }
}
