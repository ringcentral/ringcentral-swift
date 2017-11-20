import Foundation
import ObjectMapper
open class AddressInfoRequest: Mappable {
    /*
    User street address
    */
    open var `streetAddress`: String?
    /*
    User city
    */
    open var `locality`: String?
    /*
    User state/region
    */
    open var `region`: String?
    /*
    User postal code
    */
    open var `postalCode`: String?
    /*
    User country
    */
    open var `country`: String?
    /*
    Address type
    */
    open var `type`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, country: String? = nil, type: String? = nil) {
        self.init()
        self.streetAddress = `streetAddress`
        self.locality = `locality`
        self.region = `region`
        self.postalCode = `postalCode`
        self.country = `country`
        self.type = `type`
    }
    open func mapping(map: Map) {
        `streetAddress` <- map["streetAddress"]
        `locality` <- map["locality"]
        `region` <- map["region"]
        `postalCode` <- map["postalCode"]
        `country` <- map["country"]
        `type` <- map["type"]
    }
}
