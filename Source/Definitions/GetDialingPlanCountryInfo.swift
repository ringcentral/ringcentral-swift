import Foundation
import ObjectMapper
open class GetDialingPlanCountryInfo: Mappable {
    /*
    Internal identifier of a country
    */
    open var `id`: String?
    /*
    Canonical URI of a country
    */
    open var `uri`: String?
    /*
    Country calling code defined by ITU-T recommendations E.123 and E.164, see Calling Codes
    */
    open var `callingCode`: String?
    /*
    Country code according to the ISO standard, see ISO 3166
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
    convenience public init(id: String? = nil, uri: String? = nil, callingCode: String? = nil, isoCode: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.callingCode = `callingCode`
        self.isoCode = `isoCode`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `callingCode` <- map["callingCode"]
        `isoCode` <- map["isoCode"]
        `name` <- map["name"]
    }
}
