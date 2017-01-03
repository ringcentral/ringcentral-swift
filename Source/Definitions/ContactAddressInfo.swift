import Foundation
import ObjectMapper
open class ContactAddressInfo: Definition {
    // Country name of extension user company. Not returned for Address Book
    open var `country`: String?
    // State/province name of extension user company
    open var `state`: String?
    // City name of extension user company
    open var `city`: String?
    // Street address of extension user company
    open var `street`: String?
    // Zip code of extension user company
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
