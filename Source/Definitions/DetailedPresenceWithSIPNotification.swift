import Foundation
import ObjectMapper
open class DetailedPresenceWithSIPNotification: Mappable {
    // Universally unique identifier of a notification
    open var `uuid`: String?
    // Event filter URI
    open var `event`: String?
    // Internal identifier of a subscription
    open var `subscriptionId`: String?
    // The datetime of sending a notification in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `timestamp`: String?
    // Notification payload body
    open var `body`: DetailedPresencewithSIPEvent?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uuid: String? = nil, event: String? = nil, subscriptionId: String? = nil, timestamp: String? = nil, body: DetailedPresencewithSIPEvent? = nil) {
        self.init()
        self.uuid = `uuid`
        self.event = `event`
        self.subscriptionId = `subscriptionId`
        self.timestamp = `timestamp`
        self.body = `body`
    }
    open func mapping(map: Map) {
        `uuid` <- map["uuid"]
        `event` <- map["event"]
        `subscriptionId` <- map["subscriptionId"]
        `timestamp` <- map["timestamp"]
        `body` <- map["body"]
    }
}
