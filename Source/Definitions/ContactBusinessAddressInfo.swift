import Foundation
import ObjectMapper
open class ContactBusinessAddressInfo: Mappable {
    /*
    Country name of an extension user company
    */
    open var `country`: String?
    /*
    State/province name of an extension user company. Mandatory for the USA, UK and Canada
    */
    open var `state`: String?
    /*
    City name of an extension user company
    */
    open var `city`: String?
    /*
    Street address of an extension user company
    */
    open var `street`: String?
    /*
    Zip code of an extension user company
    */
    open var `zip`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(country: String? = nil, state: String? = nil, city: String? = nil, street: String? = nil, zip: String? = nil) {
        self.init()
        self.country = `country`
        self.state = `state`
        self.city = `city`
        self.street = `street`
        self.zip = `zip`
    }
    open func mapping(map: Map) {
        `country` <- map["country"]
        `state` <- map["state"]
        `city` <- map["city"]
        `street` <- map["street"]
        `zip` <- map["zip"]
    }
}
