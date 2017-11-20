import Foundation
import ObjectMapper
open class PaymentInfoAddressResource: Mappable {
    /*
    */
    open var `country`: String?
    /*
    */
    open var `state`: String?
    /*
    */
    open var `city`: String?
    /*
    */
    open var `street`: String?
    /*
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
