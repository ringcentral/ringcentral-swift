import Foundation
import ObjectMapper
import Alamofire
open class RuleInfo_ForwardingNumberInfo: Mappable {
    // Link to a forwarding number resource
    open var `uri`: String?
    // Internal identifier of a forwarding number
    open var `id`: String?
    // Phone number to which the call is forwarded
    open var `phoneNumber`: String?
    // Title of a forwarding number
    open var `label`: String?
    public init() {
    }
    convenience public init(uri: String? = nil, id: String? = nil, phoneNumber: String? = nil, label: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.phoneNumber = `phoneNumber`
        self.label = `label`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `phoneNumber` <- map["phoneNumber"]
        `label` <- map["label"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
