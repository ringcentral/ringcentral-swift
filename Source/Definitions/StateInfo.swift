import Foundation
import ObjectMapper
import Alamofire
open class StateInfo: Mappable {
    // Internal identifier of a state
    open var `id`: String?
    // Canonical URI of a state
    open var `uri`: String?
    // Information on a country the state belongs to
    open var `country`: StateInfo_CountryInfo?
    // Short code for a state (2-letter usually)
    open var `isoCode`: String?
    // Official name of a state
    open var `name`: String?
    public init() {
    }
    convenience public init(id: String? = nil, uri: String? = nil, country: StateInfo_CountryInfo? = nil, isoCode: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.country = `country`
        self.isoCode = `isoCode`
        self.name = `name`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `country` <- map["country"]
        `isoCode` <- map["isoCode"]
        `name` <- map["name"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
