import Foundation
import ObjectMapper
open class ServerInfo: Mappable {
    /*
    Canonical URI of the API version
    */
    open var `uri`: String?
    /*
    Full API version information: uri, number, release date
    */
    open var `apiVersions`: [VersionInfo]?
    /*
    Server version
    */
    open var `serverVersion`: String?
    /*
    Server revision
    */
    open var `serverRevision`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, apiVersions: [VersionInfo]? = nil, serverVersion: String? = nil, serverRevision: String? = nil) {
        self.init()
        self.uri = `uri`
        self.apiVersions = `apiVersions`
        self.serverVersion = `serverVersion`
        self.serverRevision = `serverRevision`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `apiVersions` <- map["apiVersions"]
        `serverVersion` <- map["serverVersion"]
        `serverRevision` <- map["serverRevision"]
    }
}
