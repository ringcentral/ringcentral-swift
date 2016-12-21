import Foundation
import ObjectMapper
import Alamofire
open class TimeInterval: Mappable {
    // Time in format hh:mm
    open var `from`: String?
    // Time in format hh:mm
    open var `to`: String?
    public init() {
    }
    convenience public init(from: String? = nil, to: String? = nil) {
        self.init()
        self.from = `from`
        self.to = `to`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `from` <- map["from"]
        `to` <- map["to"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
