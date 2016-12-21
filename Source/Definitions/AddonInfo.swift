import Foundation
import ObjectMapper
import Alamofire
open class AddonInfo: Mappable {
    // Addon identifier. For HardPhones of certain types, which are compatible with this addon identifier
    open var `id`: String?
    // Number of addons. For HardPhones of certain types, which are compatible with such addon identifier
    open var `count`: Int?
    public init() {
    }
    convenience public init(id: String? = nil, count: Int? = nil) {
        self.init()
        self.id = `id`
        self.count = `count`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `count` <- map["count"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
