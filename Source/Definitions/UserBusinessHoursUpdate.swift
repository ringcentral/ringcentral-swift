import Foundation
import ObjectMapper
open class UserBusinessHoursUpdate: Mappable {
    /*
    Canonical URI of a business-hours resource
    */
    open var `uri`: String?
    /*
    Schedule when an answering rule is applied
    */
    open var `schedule`: UserBusinessHoursScheduleInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, schedule: UserBusinessHoursScheduleInfo? = nil) {
        self.init()
        self.uri = `uri`
        self.schedule = `schedule`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `schedule` <- map["schedule"]
    }
}
