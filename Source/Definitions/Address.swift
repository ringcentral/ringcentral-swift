import Foundation
import ObjectMapper
open class Address: Mappable {
    /*
    */
    open var `country`: String?
    /*
    */
    open var `locality`: String?
    /*
    */
    open var `postalCode`: String?
    /*
    */
    open var `region`: String?
    /*
    */
    open var `streetAddress`: String?
    /*
    */
    open var `type`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(country: String? = nil, locality: String? = nil, postalCode: String? = nil, region: String? = nil, streetAddress: String? = nil, type: String? = nil) {
        self.init()
        self.country = `country`
        self.locality = `locality`
        self.postalCode = `postalCode`
        self.region = `region`
        self.streetAddress = `streetAddress`
        self.type = `type`
    }
    open func mapping(map: Map) {
        `country` <- map["country"]
        `locality` <- map["locality"]
        `postalCode` <- map["postalCode"]
        `region` <- map["region"]
        `streetAddress` <- map["streetAddress"]
        `type` <- map["type"]
    }
}
