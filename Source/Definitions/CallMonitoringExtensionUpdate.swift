import Foundation
import ObjectMapper
open class CallMonitoringExtensionUpdate: Mappable {
    /*
    Only the following extension types are allowed: User, DigitalUser, VirtualUser, FaxUser, Limited
    */
    open var `id`: String?
    /*
    */
    open var `permissions`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, permissions: [String]? = nil) {
        self.init()
        self.id = `id`
        self.permissions = `permissions`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `permissions` <- map["permissions"]
    }
}
