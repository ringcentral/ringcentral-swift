import Foundation
import ObjectMapper
open class CreateSubscriptionRequest: Mappable {
    /*
    Collection of URIs to API resources. For APNS transport type only message event filter is available
    */
    open var `eventFilters`: [String]?
    /*
    Notification delivery settings
    */
    open var `deliveryMode`: NotificationDeliveryModeRequest?
    /*
    Subscription lifetime in seconds. Max value is 7 days (604800 sec). For *WebHook* transport type max value might be set up to 630720000 seconds (20 years)
    */
    open var `expiresIn`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(eventFilters: [String]? = nil, deliveryMode: NotificationDeliveryModeRequest? = nil, expiresIn: Int? = nil) {
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
