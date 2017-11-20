import Foundation
import ObjectMapper
open class BusinessHoursResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `schedule`: ScheduleResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, schedule: ScheduleResource? = nil) {
        self.init()
        self.uri = `uri`
        self.schedule = `schedule`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `schedule` <- map["schedule"]
    }
}
