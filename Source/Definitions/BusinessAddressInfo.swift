import Foundation
import ObjectMapper
open class BusinessAddressInfo: Definition {
    // Name of a country
    open var `country`: String?
    // Name of a state/province
    open var `state`: String?
    // Name of a city
    open var `city`: String?
    // Street address
    open var `street`: String?
    // Zip code
    open var `zip`: String?
    convenience public init(country: String? = nil, state: String? = nil, city: String? = nil, street: String? = nil, zip: String? = nil) {
        self.init()
        self.country = `country`
        self.state = `state`
        self.city = `city`
        self.street = `street`
        self.zip = `zip`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `country` <- map["country"]
        `state` <- map["state"]
        `city` <- map["city"]
        `street` <- map["street"]
        `zip` <- map["zip"]
    }
}
