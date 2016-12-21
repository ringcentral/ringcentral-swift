import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_PartnerId: Mappable {
    // Extension partner identifier
    open var `partnerId`: String?
    public init() {
    }
    convenience public init(partnerId: String? = nil) {
        self.init()
        self.partnerId = `partnerId`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `partnerId` <- map["partnerId"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
