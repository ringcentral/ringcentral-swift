import Foundation
import ObjectMapper
open class ConversationResource: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `typingNotifications`: DeliveryModeResource?
    /*
    */
    open var `uri`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, typingNotifications: DeliveryModeResource? = nil, uri: String? = nil) {
        self.init()
        self.id = `id`
        self.typingNotifications = `typingNotifications`
        self.uri = `uri`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `typingNotifications` <- map["typingNotifications"]
        `uri` <- map["uri"]
    }
}
