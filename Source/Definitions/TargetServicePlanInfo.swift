import Foundation
import ObjectMapper
open class TargetServicePlanInfo: Mappable {
    // Internal identifier of a target service plan
    open var `id`: String?
    // Name of a target service plan
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
    }
}
