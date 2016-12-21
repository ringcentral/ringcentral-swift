import Foundation
import ObjectMapper
import Alamofire
open class RingOutInfo: Mappable {
    // Internal identifier of a RingOut call
    open var `id`: String?
    // RingOut status information
    open var `status`: RingOutStatusInfo?
    public init() {
    }
    convenience public init(id: String? = nil, status: RingOutStatusInfo? = nil) {
        self.init()
        self.id = `id`
        self.status = `status`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `status` <- map["status"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
