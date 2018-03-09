import Foundation
import ObjectMapper
open class BillingPlanResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `durationUnit`: String?
    /*
    */
    open var `duration`: Int?
    /*
    */
    open var `type`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, name: String? = nil, durationUnit: String? = nil, duration: Int? = nil, type: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.name = `name`
        self.durationUnit = `durationUnit`
        self.duration = `duration`
        self.type = `type`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `durationUnit` <- map["durationUnit"]
        `duration` <- map["duration"]
        `type` <- map["type"]
    }
}
