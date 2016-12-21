import Foundation
import ObjectMapper
import Alamofire
open class CallersInfo: Mappable {
    // Phone number of a caller
    open var `callerId`: String?
    // Contact name of a caller
    open var `name`: String?
    public init() {
    }
    convenience public init(callerId: String? = nil, name: String? = nil) {
        self.init()
        self.callerId = `callerId`
        self.name = `name`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `callerId` <- map["callerId"]
        `name` <- map["name"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
