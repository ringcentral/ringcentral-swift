import Foundation
import ObjectMapper
open class DialInNumberResource: Mappable {
    /*
    */
    open var `phoneNumber`: String?
    /*
    */
    open var `formattedNumber`: String?
    /*
    */
    open var `location`: String?
    /*
    */
    open var `country`: CountryResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, formattedNumber: String? = nil, location: String? = nil, country: CountryResource? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
        self.formattedNumber = `formattedNumber`
        self.location = `location`
        self.country = `country`
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `formattedNumber` <- map["formattedNumber"]
        `location` <- map["location"]
        `country` <- map["country"]
    }
}
