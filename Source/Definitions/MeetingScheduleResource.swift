import Foundation
import ObjectMapper
open class MeetingScheduleResource: Mappable {
    /*
    */
    open var `startTime`: String?
    /*
    */
    open var `durationInMinutes`: Int?
    /*
    */
    open var `timeZone`: TimezoneResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(startTime: String? = nil, durationInMinutes: Int? = nil, timeZone: TimezoneResource? = nil) {
        self.init()
        self.startTime = `startTime`
        self.durationInMinutes = `durationInMinutes`
        self.timeZone = `timeZone`
    }
    open func mapping(map: Map) {
        `startTime` <- map["startTime"]
        `durationInMinutes` <- map["durationInMinutes"]
        `timeZone` <- map["timeZone"]
    }
}
