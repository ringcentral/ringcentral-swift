import Foundation
import ObjectMapper
import Alamofire

open class Definition: Mappable {
    public init() {
    }

    required public init?(map: Map) {
    }

    open func mapping(map: Map) {
    }

    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
