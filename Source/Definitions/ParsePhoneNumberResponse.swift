import Foundation
import ObjectMapper
open class ParsePhoneNumberResponse: Mappable {
    /*
    Canonical URI of a resource
    */
    open var `uri`: String?
    /*
    Information on a user home country
    */
    open var `homeCountry`: [GetCountryInfoNumberParser]?
    /*
    Parsed phone numbers data
    */
    open var `phoneNumbers`: [PhoneNumberInfoNumberParser]?
    /*
    One of the numbers to be parsed, passed as a string in response
    */
    open var `originalString`: String?
    /*
    Area code of the location (3-digit usually), according to the NANP number format, that can be summarized as NPA-NXX-xxxx and covers Canada, the United States, parts of the Caribbean Sea, and some Atlantic and Pacific islands. See North American Numbering Plan for details
    */
    open var `areaCode`: String?
    /*
    Domestic format of a phone number
    */
    open var `formattedNational`: String?
    /*
    International format of a phone number
    */
    open var `formattedInternational`: String?
    /*
    Dialing format of a phone number
    */
    open var `dialable`: String?
    /*
    E.164 (11-digits) format of a phone number
    */
    open var `e164`: String?
    /*
    True  if the number is in a special format (for example N11 code)
    */
    open var `special`: Bool?
    /*
    E.164 (11-digits) format of a phone number without the plus sign ('+')
    */
    open var `normalized`: String?
    /*
    Information on a country the phone number belongs to
    */
    open var `country`: [GetCountryInfoNumberParser]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, homeCountry: [GetCountryInfoNumberParser]? = nil, phoneNumbers: [PhoneNumberInfoNumberParser]? = nil, originalString: String? = nil, areaCode: String? = nil, formattedNational: String? = nil, formattedInternational: String? = nil, dialable: String? = nil, e164: String? = nil, special: Bool? = nil, normalized: String? = nil, country: [GetCountryInfoNumberParser]? = nil) {
        self.init()
        self.uri = `uri`
        self.homeCountry = `homeCountry`
        self.phoneNumbers = `phoneNumbers`
        self.originalString = `originalString`
        self.areaCode = `areaCode`
        self.formattedNational = `formattedNational`
        self.formattedInternational = `formattedInternational`
        self.dialable = `dialable`
        self.e164 = `e164`
        self.special = `special`
        self.normalized = `normalized`
        self.country = `country`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `homeCountry` <- map["homeCountry"]
        `phoneNumbers` <- map["phoneNumbers"]
        `originalString` <- map["originalString"]
        `areaCode` <- map["areaCode"]
        `formattedNational` <- map["formattedNational"]
        `formattedInternational` <- map["formattedInternational"]
        `dialable` <- map["dialable"]
        `e164` <- map["e164"]
        `special` <- map["special"]
        `normalized` <- map["normalized"]
        `country` <- map["country"]
    }
}
