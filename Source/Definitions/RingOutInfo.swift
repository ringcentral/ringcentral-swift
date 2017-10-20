import Foundation
import ObjectMapper
open class RingOutInfo: Mappable {
    /*
    Internal identifier of a RingOut call
    */
    open var `id`: String?
    /*
    RingOut status information
    */
    open var `status`: RingOutStatusInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, status: RingOutStatusInfo? = nil) {
        self.init()
        self.id = `id`
        self.status = `status`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `status` <- map["status"]
    }
}
