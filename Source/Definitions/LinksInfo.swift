import Foundation
import ObjectMapper
import Alamofire
open class LinksInfo: Mappable {
    // Link to start a meeting
    open var `startUri`: String?
    // Link to join a meeting
    open var `joinUri`: String?
    public init() {
    }
    convenience public init(startUri: String? = nil, joinUri: String? = nil) {
        self.init()
        self.startUri = `startUri`
        self.joinUri = `joinUri`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `startUri` <- map["startUri"]
        `joinUri` <- map["joinUri"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
