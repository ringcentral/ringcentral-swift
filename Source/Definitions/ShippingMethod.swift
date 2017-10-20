import Foundation
import ObjectMapper
open class ShippingMethod: Mappable {
    /*
    Method identifier. The default value is "1" (Ground)
    */
    open var `id`: String?
    /*
    Method name, corresponding to the identifier
    */
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
