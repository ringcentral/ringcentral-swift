import Foundation
import ObjectMapper
open class CallMonitoringGroupMemberInfo: Mappable {
    /*
    Link to a call monitoring group member
    */
    open var `uri`: String?
    /*
    Internal identifier of a call monitoring group member
    */
    open var `id`: String?
    /*
    Extension number of a call monitoring group member
    */
    open var `extensionNumber`: String?
    /*
    Call monitoring permission; mltiple values allowed: * "Monitoring" - User can monitor a group * "Monitored" - User can be monitored
    */
    open var `permissions`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, extensionNumber: String? = nil, permissions: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.extensionNumber = `extensionNumber`
        self.permissions = `permissions`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `extensionNumber` <- map["extensionNumber"]
        `permissions` <- map["permissions"]
    }
}
