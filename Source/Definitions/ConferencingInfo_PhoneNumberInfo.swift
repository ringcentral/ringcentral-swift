import Foundation
import ObjectMapper
open class ConferencingInfo_PhoneNumberInfo: Mappable {
    /*
    Information on a home country of a conference phone number
    */
    open var `country`: ConferencingInfo_PhoneNumberInfo_CountryInfo?
    /*
    'True' if the number is default for the conference. Default conference number is a domestic number that can be set by user (otherwise it is set by the system). Only one default number per country is allowed
    */
    open var `default`: Bool?
    /*
    'True' if the greeting message is played on this number
    */
    open var `hasGreeting`: Bool?
    /*
    Location (city, region, state) of a conference phone number
    */
    open var `location`: String?
    /*
    Dial-in phone number to connect to a conference
    */
    open var `phoneNumber`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(country: ConferencingInfo_PhoneNumberInfo_CountryInfo? = nil, default: Bool? = nil, hasGreeting: Bool? = nil, location: String? = nil, phoneNumber: String? = nil) {
        self.init()
        self.country = `country`
        self.default = `default`
        self.hasGreeting = `hasGreeting`
        self.location = `location`
        self.phoneNumber = `phoneNumber`
    }
    open func mapping(map: Map) {
        `country` <- map["country"]
        `default` <- map["default"]
        `hasGreeting` <- map["hasGreeting"]
        `location` <- map["location"]
        `phoneNumber` <- map["phoneNumber"]
    }
}
