import Foundation
import ObjectMapper
import Alamofire
open class GreetingInfo: Mappable {
    // Type of a greeting, specifying the case when the greeting is played. See also Greeting Types
    open var `type`: String?
    // Predefined greeting information
    open var `preset`: PresetInfo?
    public init() {
    }
    convenience public init(type: String? = nil, preset: PresetInfo? = nil) {
        self.init()
        self.type = `type`
        self.preset = `preset`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `preset` <- map["preset"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
