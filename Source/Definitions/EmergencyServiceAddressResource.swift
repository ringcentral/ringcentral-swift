import Foundation
import ObjectMapper
open class EmergencyServiceAddressResource: Mappable {
    /*
    */
    open var `street`: String?
    /*
    */
    open var `street2`: String?
    /*
    */
    open var `city`: String?
    /*
    */
    open var `state`: String?
    /*
    */
    open var `country`: String?
    /*
    */
    open var `zip`: String?
    /*
    */
    open var `customerName`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(street: String? = nil, street2: String? = nil, city: String? = nil, state: String? = nil, country: String? = nil, zip: String? = nil, customerName: String? = nil) {
        self.init()
        self.street = `street`
        self.street2 = `street2`
        self.city = `city`
        self.state = `state`
        self.country = `country`
        self.zip = `zip`
        self.customerName = `customerName`
    }
    open func mapping(map: Map) {
        `street` <- map["street"]
        `street2` <- map["street2"]
        `city` <- map["city"]
        `state` <- map["state"]
        `country` <- map["country"]
        `zip` <- map["zip"]
        `customerName` <- map["customerName"]
    }
}
