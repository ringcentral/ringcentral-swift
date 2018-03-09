import Foundation
import ObjectMapper
open class AddressFormCountryResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `country`: CountryResource?
    /*
    */
    open var `attributes`: [FormFieldResource]?
    /*
    */
    open var `emergencyNumber`: String?
    /*
    */
    open var `default`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, country: CountryResource? = nil, attributes: [FormFieldResource]? = nil, emergencyNumber: String? = nil, default: Bool? = nil) {
        self.init()
        self.uri = `uri`
        self.country = `country`
        self.attributes = `attributes`
        self.emergencyNumber = `emergencyNumber`
        self.default = `default`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `country` <- map["country"]
        `attributes` <- map["attributes"]
        `emergencyNumber` <- map["emergencyNumber"]
        `default` <- map["default"]
    }
}
