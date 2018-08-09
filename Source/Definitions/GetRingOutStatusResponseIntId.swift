import Foundation
import ObjectMapper
open class GetRingOutStatusResponseIntId: Mappable {
    /*
    Internal identifier of a RingOut call
    */
    open var `id`: Int?
    /*
    */
    open var `uri`: String?
    /*
    RingOut status information
    */
    open var `status`: RingOutStatusInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: Int? = nil, uri: String? = nil, status: RingOutStatusInfo? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.status = `status`
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `status` <- map["status"]
    }
}
