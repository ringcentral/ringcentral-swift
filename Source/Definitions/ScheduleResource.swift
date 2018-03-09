import Foundation
import ObjectMapper
open class ScheduleResource: Mappable {
    /*
    */
    open var `ranges`: [DateTimeIntervalResource]?
    /*
    */
    open var `ref`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(ranges: [DateTimeIntervalResource]? = nil, ref: String? = nil) {
        self.init()
        self.ranges = `ranges`
        self.ref = `ref`
    }
    open func mapping(map: Map) {
        `ranges` <- map["ranges"]
        `ref` <- map["ref"]
    }
}
