import Foundation
import ObjectMapper
import Alamofire
open class AnsweringRule_ScheduleInfo: Mappable {
    // Weekly schedule. If specified, ranges cannot be specified
    open var `weeklyRanges`: WeeklyScheduleInfo?
    // Specific data ranges. If specified, weeklyRanges cannot be specified
    open var `ranges`: RangesInfo?
    public init() {
    }
    convenience public init(weeklyRanges: WeeklyScheduleInfo? = nil, ranges: RangesInfo? = nil) {
        self.init()
        self.weeklyRanges = `weeklyRanges`
        self.ranges = `ranges`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `weeklyRanges` <- map["weeklyRanges"]
        `ranges` <- map["ranges"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
