import Foundation
import ObjectMapper
open class ServicePlanInfo: Definition {
    // Internal identifier of a service plan
    open var `id`: String?
    // Name of a service plan
    open var `name`: String?
    // Edition of a service plan
    open var `edition`: String?
    convenience public init(id: String? = nil, name: String? = nil, edition: String? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
        self.edition = `edition`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `edition` <- map["edition"]
    }
}
