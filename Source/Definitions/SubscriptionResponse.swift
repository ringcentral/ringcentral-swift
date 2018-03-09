import Foundation
import ObjectMapper
open class SubscriptionResponse: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `creationTime`: String?
    /*
    */
    open var `status`: String?
    /*
    */
    open var `eventFilters`: [String]?
    /*
    */
    open var `expirationTime`: String?
    /*
    */
    open var `expiresIn`: Int?
    /*
    */
    open var `deliveryMode`: DeliveryModeResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, creationTime: String? = nil, status: String? = nil, eventFilters: [String]? = nil, expirationTime: String? = nil, expiresIn: Int? = nil, deliveryMode: DeliveryModeResource? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.creationTime = `creationTime`
        self.status = `status`
        self.eventFilters = `eventFilters`
        self.expirationTime = `expirationTime`
        self.expiresIn = `expiresIn`
        self.deliveryMode = `deliveryMode`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `creationTime` <- map["creationTime"]
        `status` <- map["status"]
        `eventFilters` <- map["eventFilters"]
        `expirationTime` <- map["expirationTime"]
        `expiresIn` <- map["expiresIn"]
        `deliveryMode` <- map["deliveryMode"]
    }
}
