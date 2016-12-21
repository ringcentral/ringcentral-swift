import Foundation
import ObjectMapper
import Alamofire
open class SIPData: Mappable {
    // Recipient data
    open var `toTag`: String?
    // Sender data
    open var `fromTag`: String?
    // Remote address URL
    open var `remoteUri`: String?
    // Local address URL
    open var `localUri`: String?
    public init() {
    }
    convenience public init(toTag: String? = nil, fromTag: String? = nil, remoteUri: String? = nil, localUri: String? = nil) {
        self.init()
        self.toTag = `toTag`
        self.fromTag = `fromTag`
        self.remoteUri = `remoteUri`
        self.localUri = `localUri`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `toTag` <- map["toTag"]
        `fromTag` <- map["fromTag"]
        `remoteUri` <- map["remoteUri"]
        `localUri` <- map["localUri"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
