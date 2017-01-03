import Foundation
import ObjectMapper
open class ParsePhoneNumber_PhoneNumberInfo: Definition {
    // Area code of the location (3-digit usually), according to the NANP number format, that can be summarized as NPA-NXX-xxxx and covers Canada, the United States, parts of the Caribbean Sea, and some Atlantic and Pacific islands. See North American Numbering Plan for details
    open var `areaCode`: String?
    // Information on a country the phone number belongs to
    open var `country`: [ParsePhoneNumber_CountryInfo]?
    // Dialing format of a phone number
    open var `dialable`: String?
    // E.164 (11-digits) format of a phone number
    open var `e164`: String?
    // International format of a phone number
    open var `formattedInternational`: String?
    // Domestic format of a phone number
    open var `formattedNational`: String?
    // One of the numbers to be parsed, passed as a string in response
    open var `originalString`: String?
    // "True" if the number is in a special format (for example N11 code)
    open var `special`: Bool?
    // E.164 (11-digits) format of a phone number without the plus sign ('+')
    open var `normalized`: String?
    convenience public init(areaCode: String? = nil, country: [ParsePhoneNumber_CountryInfo]? = nil, dialable: String? = nil, e164: String? = nil, formattedInternational: String? = nil, formattedNational: String? = nil, originalString: String? = nil, special: Bool? = nil, normalized: String? = nil) {
        self.init()
        self.areaCode = `areaCode`
        self.country = `country`
        self.dialable = `dialable`
        self.e164 = `e164`
        self.formattedInternational = `formattedInternational`
        self.formattedNational = `formattedNational`
        self.originalString = `originalString`
        self.special = `special`
        self.normalized = `normalized`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `areaCode` <- map["areaCode"]
        `country` <- map["country"]
        `dialable` <- map["dialable"]
        `e164` <- map["e164"]
        `formattedInternational` <- map["formattedInternational"]
        `formattedNational` <- map["formattedNational"]
        `originalString` <- map["originalString"]
        `special` <- map["special"]
        `normalized` <- map["normalized"]
    }
}
