import Foundation
import ObjectMapper
import Alamofire
open class UnconditionalForwardingInfo: Mappable {
    // Phone number to which the call is forwarded
    open var `phoneNumber`: String?
    public init() {
    }
    convenience public init(phoneNumber: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
