import Foundation
import ObjectMapper
open class ExtensionCallerIdInfo: Mappable {
    /*
    Canonical URL of a caller ID resource
    */
    open var `uri`: String?
    /*
    */
    open var `byDevice`: [CallerIdByDevice]?
    /*
    */
    open var `byFeature`: [CallerIdByFeature]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, byDevice: [CallerIdByDevice]? = nil, byFeature: [CallerIdByFeature]? = nil) {
        self.init()
        self.uri = `uri`
        self.byDevice = `byDevice`
        self.byFeature = `byFeature`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `byDevice` <- map["byDevice"]
        `byFeature` <- map["byFeature"]
    }
}
