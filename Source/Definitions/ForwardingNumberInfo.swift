import Foundation
import ObjectMapper
import Alamofire
open class ForwardingNumberInfo: Mappable {
    // Internal identifier of a forwarding/call flip phone number
    open var `id`: String?
    // Canonical URI of a forwarding/call flip phone number
    open var `uri`: String?
    // Forwarding/Call flip phone number
    open var `phoneNumber`: String?
    // Forwarding/Call flip number title
    open var `label`: String?
    // Type of option this phone number is used for. Multiple values are accepted
    open var `features`: String?
    // Number assigned to the call flip phone number, corresponds to the shortcut dial number
    open var `flipNumber`: Int?
    public init() {
    }
    convenience public init(id: String? = nil, uri: String? = nil, phoneNumber: String? = nil, label: String? = nil, features: String? = nil, flipNumber: Int? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.phoneNumber = `phoneNumber`
        self.label = `label`
        self.features = `features`
        self.flipNumber = `flipNumber`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `phoneNumber` <- map["phoneNumber"]
        `label` <- map["label"]
        `features` <- map["features"]
        `flipNumber` <- map["flipNumber"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
