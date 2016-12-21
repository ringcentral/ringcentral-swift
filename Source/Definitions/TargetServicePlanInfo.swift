import Foundation
import ObjectMapper
import Alamofire
open class TargetServicePlanInfo: Mappable {
    // Internal identifier of a target service plan
    open var `id`: String?
    // Name of a target service plan
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
