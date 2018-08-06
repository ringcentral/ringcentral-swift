import Foundation
import ObjectMapper
open class NotificationInfo: Mappable {
    /*
    Alert information
    */
    open var `alert`: AlertInfo?
    /*
    Number of incoming messages
    */
    open var `badge`: String?
    /*
    Message sound
    */
    open var `sound`: String?
    /*
    Content availability
    */
    open var `contentAvailable`: String?
    /*
    Category of a message
    */
    open var `category`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(alert: AlertInfo? = nil, badge: String? = nil, sound: String? = nil, contentAvailable: String? = nil, category: String? = nil) {
        self.init()
        self.alert = `alert`
        self.badge = `badge`
        self.sound = `sound`
        self.contentAvailable = `contentAvailable`
        self.category = `category`
    }
    open func mapping(map: Map) {
        `alert` <- map["alert"]
        `badge` <- map["badge"]
        `sound` <- map["sound"]
        `contentAvailable` <- map["contentAvailable"]
        `category` <- map["category"]
    }
}
