import Foundation
import ObjectMapper
open class ServerInfo: Definition {
    // Canonical URI of the API version
    open var `uri`: String?
    // Full API version information: uri, number, release date
    open var `apiVersions`: [VersionInfo]?
    // Server version
    open var `serverVersion`: String?
    // Server revision
    open var `serverRevision`: String?
    convenience public init(uri: String? = nil, apiVersions: [VersionInfo]? = nil, serverVersion: String? = nil, serverRevision: String? = nil) {
        self.init()
        self.uri = `uri`
        self.apiVersions = `apiVersions`
        self.serverVersion = `serverVersion`
        self.serverRevision = `serverRevision`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `uri` <- map["uri"]
        `apiVersions` <- map["apiVersions"]
        `serverVersion` <- map["serverVersion"]
        `serverRevision` <- map["serverRevision"]
    }
}
