import Foundation
import ObjectMapper
open class ReservationDate: Mappable {
    /*
    */
    open var `date`: String?
    /*
    */
    open var `max`: Bool?
    /*
    */
    open var `min`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(date: String? = nil, max: Bool? = nil, min: Bool? = nil) {
        self.init()
        self.date = `date`
        self.max = `max`
        self.min = `min`
    }
    open func mapping(map: Map) {
        `date` <- map["date"]
        `max` <- map["max"]
        `min` <- map["min"]
    }
}
