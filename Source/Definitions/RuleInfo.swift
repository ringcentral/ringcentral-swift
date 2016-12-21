import Foundation
import ObjectMapper
import Alamofire
open class RuleInfo: Mappable {
    // Forwarding number (or group) ordinal
    open var `index`: Int?
    // Number of rings for a forwarding number (or group)
    open var `ringCount`: Int?
    // Forwarding number (or group) data
    open var `forwardingNumbers`: [RuleInfo_ForwardingNumberInfo]?
    public init() {
    }
    convenience public init(index: Int? = nil, ringCount: Int? = nil, forwardingNumbers: [RuleInfo_ForwardingNumberInfo]? = nil) {
        self.init()
        self.index = `index`
        self.ringCount = `ringCount`
        self.forwardingNumbers = `forwardingNumbers`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `index` <- map["index"]
        `ringCount` <- map["ringCount"]
        `forwardingNumbers` <- map["forwardingNumbers"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
