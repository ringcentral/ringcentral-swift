import Foundation
import ObjectMapper
open class ApiVersionResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `versionString`: String?
    /*
    */
    open var `releaseDate`: String?
    /*
    */
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
