import Foundation
import ObjectMapper
open class GetStateInfoResponse: Mappable {
    /*
    Internal identifier of a state
    */
    open var `id`: String?
    /*
    Canonical URI of a state
    */
    open var `uri`: String?
    /*
    Information on a country the state belongs to
    */
    open var `country`: GetCountryInfoState?
    /*
    Short code for a state (2-letter usually)
    */
    open var `isoCode`: String?
    /*
    Official name of a state
    */
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, country: GetCountryInfoState? = nil, isoCode: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.country = `country`
        self.isoCode = `isoCode`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `country` <- map["country"]
        `isoCode` <- map["isoCode"]
        `name` <- map["name"]
    }
}
