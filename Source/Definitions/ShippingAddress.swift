import Foundation
import ObjectMapper
open class ShippingAddress: Mappable {
    /*
    Name of a receiver
    */
    open var `customerName`: String?
    /*
    Street address, line 1 - street address, P.O. box, company name, c/o
    */
    open var `street`: String?
    /*
    Street address, line 2 - apartment, suite, unit, building, floor, etc.
    */
    open var `street2`: String?
    /*
    City name
    */
    open var `city`: String?
    /*
    State/province name
    */
    open var `state`: String?
    /*
    Zip code
    */
    open var `zip`: String?
    /*
    Country name
    */
    open var `country`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(customerName: String? = nil, street: String? = nil, street2: String? = nil, city: String? = nil, state: String? = nil, zip: String? = nil, country: String? = nil) {
        self.init()
        self.customerName = `customerName`
        self.street = `street`
        self.street2 = `street2`
        self.city = `city`
        self.state = `state`
        self.zip = `zip`
        self.country = `country`
    }
    open func mapping(map: Map) {
        `customerName` <- map["customerName"]
        `street` <- map["street"]
        `street2` <- map["street2"]
        `city` <- map["city"]
        `state` <- map["state"]
        `zip` <- map["zip"]
        `country` <- map["country"]
    }
}
