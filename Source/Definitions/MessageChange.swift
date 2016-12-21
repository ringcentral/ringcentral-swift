import Foundation
import ObjectMapper
import Alamofire
open class MessageChange: Mappable {
    // Message type
    open var `type`: String?
    // The number of new messages. Can be omitted if the value is zero
    open var `newCount`: Int?
    // The number of updated messages. Can be omitted if the value is zero
    open var `updatedCount`: Int?
    public init() {
    }
    convenience public init(type: String? = nil, newCount: Int? = nil, updatedCount: Int? = nil) {
        self.init()
        self.type = `type`
        self.newCount = `newCount`
        self.updatedCount = `updatedCount`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `newCount` <- map["newCount"]
        `updatedCount` <- map["updatedCount"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
