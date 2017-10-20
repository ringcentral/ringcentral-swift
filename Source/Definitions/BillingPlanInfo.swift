import Foundation
import ObjectMapper
open class BillingPlanInfo: Mappable {
    /*
    Internal identifier of a billing plan
    */
    open var `id`: String?
    /*
    Billing plan name
    */
    open var `name`: String?
    /*
    Duration period
    */
    open var `durationUnit`: String?
    /*
    Number of duration units
    */
    open var `duration`: String?
    /*
    Billing plan type
    */
    open var `type`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, name: String? = nil, durationUnit: String? = nil, duration: String? = nil, type: String? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
        self.durationUnit = `durationUnit`
        self.duration = `duration`
        self.type = `type`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `durationUnit` <- map["durationUnit"]
        `duration` <- map["duration"]
        `type` <- map["type"]
    }
}
