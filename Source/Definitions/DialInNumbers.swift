import Foundation
import ObjectMapper
open class DialInNumbers: Mappable {
    /*
    Phone number of the dial-in number for the meeting in e.164 format
    */
    open var `phoneNumber`: String?
    /*
    Phone number of the dial-in number formatted according to the extension home country
    */
    open var `formattedNumber`: String?
    /*
    Optional field in case the dial-in number is associated with a particular location
    */
    open var `location`: String?
    /*
    Country resource corresponding to the dial-in number
    */
    open var `country`: DialInNumbers_CountryInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumber: String? = nil, formattedNumber: String? = nil, location: String? = nil, country: DialInNumbers_CountryInfo? = nil) {
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
