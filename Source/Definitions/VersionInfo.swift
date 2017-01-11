import Foundation
import ObjectMapper
open class VersionInfo: Mappable {
    // Canonical URI of API versions
    open var `uri`: String?
    // Version of the RingCentral REST API
    open var `versionString`: String?
    // Release date of this version
    open var `releaseDate`: String?
    // URI part determining the current version
    open var `uriString`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, versionString: String? = nil, releaseDate: String? = nil, uriString: String? = nil) {
        self.init()
        self.uri = `uri`
        self.versionString = `versionString`
        self.releaseDate = `releaseDate`
        self.uriString = `uriString`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `versionString` <- map["versionString"]
        `releaseDate` <- map["releaseDate"]
        `uriString` <- map["uriString"]
    }
}
