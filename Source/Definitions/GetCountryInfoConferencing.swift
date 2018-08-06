import Foundation
import ObjectMapper
open class GetCountryInfoConferencing: Mappable {
    /*
    Internal identifier of a country
    */
    open var `id`: String?
    /*
    Canonical URI of a country
    */
    open var `uri`: String?
    /*
    Country calling code defined by ITU-T recommendations [E.123](https://www.itu.int/rec/T-REC-E.123-200102-I/en) and [E.164](https://www.itu.int/rec/T-REC-E.164-201011-I)
    */
    open var `callingCode`: String?
    /*
    Emergency calling feature availability/emergency address requirement indicator
    */
    open var `emergencyCalling`: Bool?
    /*
    Country code according to the ISO standard, see [ISO 3166](https://www.iso.org/iso-3166-country-codes.html)
    */
    open var `isoCode`: String?
    /*
    Official name of a country
    */
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, callingCode: String? = nil, emergencyCalling: Bool? = nil, isoCode: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.callingCode = `callingCode`
        self.emergencyCalling = `emergencyCalling`
        self.isoCode = `isoCode`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `callingCode` <- map["callingCode"]
        `emergencyCalling` <- map["emergencyCalling"]
        `isoCode` <- map["isoCode"]
        `name` <- map["name"]
    }
}
