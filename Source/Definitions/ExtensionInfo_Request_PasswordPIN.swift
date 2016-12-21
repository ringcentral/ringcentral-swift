import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_PasswordPIN: Mappable {
    // Password for extension
    open var `password`: String?
    // IVR PIN
    open var `ivrPin`: String?
    public init() {
    }
    convenience public init(password: String? = nil, ivrPin: String? = nil) {
        self.init()
        self.password = `password`
        self.ivrPin = `ivrPin`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `password` <- map["password"]
        `ivrPin` <- map["ivrPin"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
