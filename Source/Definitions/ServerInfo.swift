import Foundation
import ObjectMapper
import Alamofire
open class ServerInfo: Mappable {
    // Canonical URI of the API version
    open var `uri`: String?
    // Full API version information: uri, number, release date
    open var `apiVersions`: [VersionInfo]?
    // Server version
    open var `serverVersion`: String?
    // Server revision
    open var `serverRevision`: String?
    public init() {
    }
    convenience public init(uri: String? = nil, apiVersions: [VersionInfo]? = nil, serverVersion: String? = nil, serverRevision: String? = nil) {
        self.init()
        self.uri = `uri`
        self.apiVersions = `apiVersions`
        self.serverVersion = `serverVersion`
        self.serverRevision = `serverRevision`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `apiVersions` <- map["apiVersions"]
        `serverVersion` <- map["serverVersion"]
        `serverRevision` <- map["serverRevision"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
