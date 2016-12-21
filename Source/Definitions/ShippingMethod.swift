import Foundation
import ObjectMapper
import Alamofire
open class ShippingMethod: Mappable {
    // Method identifier. The default value is "1" (Ground)
    open var `id`: String?
    // Method name, corresponding to the identifier
    open var `name`: String?
    public init() {
    }
    convenience public init(id: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
