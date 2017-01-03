import Foundation
import ObjectMapper
open class ShippingMethod: Definition {
    // Method identifier. The default value is "1" (Ground)
    open var `id`: String?
    // Method name, corresponding to the identifier
    open var `name`: String?
    convenience public init(id: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
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
    }
}
