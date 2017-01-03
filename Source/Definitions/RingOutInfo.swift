import Foundation
import ObjectMapper
open class RingOutInfo: Definition {
    // Internal identifier of a RingOut call
    open var `id`: String?
    // RingOut status information
    open var `status`: RingOutStatusInfo?
    convenience public init(id: String? = nil, status: RingOutStatusInfo? = nil) {
        self.init()
        self.id = `id`
        self.status = `status`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `status` <- map["status"]
    }
}
