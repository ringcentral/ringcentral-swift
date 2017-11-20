import Foundation
import ObjectMapper
open class CreateSubscriptionRequest: Mappable {
    /*
    Mandatory. Collection of URIs to API resources (see Event Types for details). For APNS transport type only message event filter is available
    */
    open var `eventFilters`: [String]?
    /*
    Notification delivery settings
    */
    open var `deliveryMode`: NotificationDeliveryModeRequest?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(eventFilters: [String]? = nil, deliveryMode: NotificationDeliveryModeRequest? = nil) {
        self.init()
        self.eventFilters = `eventFilters`
        self.deliveryMode = `deliveryMode`
    }
    open func mapping(map: Map) {
        `eventFilters` <- map["eventFilters"]
        `deliveryMode` <- map["deliveryMode"]
    }
}
