import Foundation
import ObjectMapper
import Alamofire
open class BusinessHoursPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "business-hours"
        }
    }
    // Get User Hours Setting
    open func get(callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    open class GetResponse: Mappable {
        // Canonical URI of a business-hours resource
        open var `uri`: String?
        // Schedule when an answering rule is applied
        open var `schedule`: BusinessHour_ScheduleInfo?
        public init() {
        }
        convenience public init(uri: String? = nil, schedule: BusinessHour_ScheduleInfo? = nil) {
            self.init()
            self.uri = `uri`
            self.schedule = `schedule`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `schedule` <- map["schedule"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
}
