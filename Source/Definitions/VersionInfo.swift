import Foundation
import ObjectMapper
import Alamofire
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
    convenience public init(uri: String? = nil, versionString: String? = nil, releaseDate: String? = nil, uriString: String? = nil) {
        self.init()
        self.uri = `uri`
        self.versionString = `versionString`
        self.releaseDate = `releaseDate`
        self.uriString = `uriString`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `versionString` <- map["versionString"]
        `releaseDate` <- map["releaseDate"]
        `uriString` <- map["uriString"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
