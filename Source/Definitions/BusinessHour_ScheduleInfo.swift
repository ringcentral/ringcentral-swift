import Foundation
import ObjectMapper
import Alamofire
open class BusinessHour_ScheduleInfo: Mappable {
    // Weekly schedule
    open var `weeklyRanges`: WeeklyScheduleInfo?
    public init() {
    }
    convenience public init(weeklyRanges: WeeklyScheduleInfo? = nil) {
        self.init()
        self.weeklyRanges = `weeklyRanges`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `weeklyRanges` <- map["weeklyRanges"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
