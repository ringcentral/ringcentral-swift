import Foundation
import ObjectMapper
open class LocationInfo: Mappable {
    /*
    Canonical URI of a location
    */
    open var `uri`: String?
    /*
    Area code of the location
    */
    open var `areaCode`: String?
    /*
    Official name of the city, belonging to the certain state
    */
    open var `city`: String?
    /*
    Area code of the location (3-digit usually), according to the NANP number format, that can be summarized as NPA-NXX-xxxx and covers Canada, the United States, parts of the Caribbean Sea, and some Atlantic and Pacific islands. See for details North American Numbering Plan
    */
    open var `npa`: String?
    /*
    Central office code of the location, according to the NANP number format, that can be summarized as NPA-NXX-xxxx and covers Canada, the United States, parts of the Caribbean Sea, and some Atlantic and Pacific islands. See for details North American Numbering Plan
    */
    open var `nxx`: String?
    /*
    ID and URI of the state this location belongs to, see State Info
    */
    open var `state`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, areaCode: String? = nil, city: String? = nil, npa: String? = nil, nxx: String? = nil, state: String? = nil) {
        self.init()
        self.uri = `uri`
        self.areaCode = `areaCode`
        self.city = `city`
        self.npa = `npa`
        self.nxx = `nxx`
        self.state = `state`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `areaCode` <- map["areaCode"]
        `city` <- map["city"]
        `npa` <- map["npa"]
        `nxx` <- map["nxx"]
        `state` <- map["state"]
    }
}
