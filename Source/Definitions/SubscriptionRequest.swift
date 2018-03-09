import Foundation
import ObjectMapper
open class SubscriptionRequest: Mappable {
    /*
    */
    open var `eventFilters`: [String]?
    /*
    */
    open var `deliveryMode`: DeliveryModeResource?
    /*
    */
    open var `expiresIn`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(eventFilters: [String]? = nil, deliveryMode: DeliveryModeResource? = nil, expiresIn: Int? = nil) {
        self.init()
        self.eventFilters = `eventFilters`
        self.deliveryMode = `deliveryMode`
        self.expiresIn = `expiresIn`
    }
    open func mapping(map: Map) {
        `eventFilters` <- map["eventFilters"]
        `deliveryMode` <- map["deliveryMode"]
        `expiresIn` <- map["expiresIn"]
    }
}
