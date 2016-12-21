import Foundation
import ObjectMapper
import Alamofire
open class ScheduleInfo: Mappable {
    // Weekly schedule
    open var `weeklyRanges`: WeeklyScheduleInfo?
    // Specific data ranges
    open var `ranges`: RangesInfo?
    // The user's schedule specified for business hours or after hours; it can also be set/retrieved calling the corresponding method
    open var `ref`: String?
    public init() {
    }
    convenience public init(weeklyRanges: WeeklyScheduleInfo? = nil, ranges: RangesInfo? = nil, ref: String? = nil) {
        self.init()
        self.weeklyRanges = `weeklyRanges`
        self.ranges = `ranges`
        self.ref = `ref`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `weeklyRanges` <- map["weeklyRanges"]
        `ranges` <- map["ranges"]
        `ref` <- map["ref"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
