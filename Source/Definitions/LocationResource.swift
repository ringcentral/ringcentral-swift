import Foundation
import ObjectMapper
open class LocationResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `city`: String?
    /*
    */
    open var `areaCode`: String?
    /*
    */
    open var `npa`: String?
    /*
    */
    open var `nxx`: String?
    /*
    */
    open var `state`: VersionedResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, city: String? = nil, areaCode: String? = nil, npa: String? = nil, nxx: String? = nil, state: VersionedResource? = nil) {
        self.init()
        self.uri = `uri`
        self.city = `city`
        self.areaCode = `areaCode`
        self.npa = `npa`
        self.nxx = `nxx`
        self.state = `state`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `city` <- map["city"]
        `areaCode` <- map["areaCode"]
        `npa` <- map["npa"]
        `nxx` <- map["nxx"]
        `state` <- map["state"]
    }
}
