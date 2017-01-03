import Foundation
import ObjectMapper
import Alamofire
open class ParsePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "parse"
        }
    }
    // Parse Phone Number
    open func post(callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: PostResponse?, error) in
            callback(t, error)
        }
    }
    // Parse Phone Number
    open func post(parameters: Parameters, callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: PostResponse?, error) in
            callback(t, error)
        }
    }
    // Parse Phone Number
    open func post(parameters: PostParameters, callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Definition {
        // Internal identifier of a home country. The default value is ISO code (ISO 3166) of the user's home country or brand country, if the user is undefined
        open var `homeCountry`: String?
        // The default value is "False". If "True", the numbers that are closer to the home country are given higher priority
        open var `nationalAsPriority`: Bool?
        convenience public init(homeCountry: String? = nil, nationalAsPriority: Bool? = nil) {
            self.init()
            self.homeCountry = `homeCountry`
            self.nationalAsPriority = `nationalAsPriority`
        }
        required public init?(map: Map) {
            super.init(map: map)
        }
        public override init() {
            super.init()
        }
        open override func mapping(map: Map) {
            `homeCountry` <- map["homeCountry"]
            `nationalAsPriority` <- map["nationalAsPriority"]
        }
    }
    open class PostResponse: Definition {
        // Canonical URI of a resource
        open var `uri`: String?
        // Information on a user home country
        open var `homeCountry`: [ParsePhoneNumber_CountryInfo]?
        // Parsed phone numbers data
        open var `phoneNumbers`: [ParsePhoneNumber_PhoneNumberInfo]?
        // One of the numbers to be parsed, passed as a string in response
        open var `originalString`: String?
        // Area code of the location (3-digit usually), according to the NANP number format, that can be summarized as NPA-NXX-xxxx and covers Canada, the United States, parts of the Caribbean Sea, and some Atlantic and Pacific islands. See North American Numbering Plan for details
        open var `areaCode`: String?
        // Domestic format of a phone number
        open var `formattedNational`: String?
        // International format of a phone number
        open var `formattedInternational`: String?
        // Dialing format of a phone number
        open var `dialable`: String?
        // E.164 (11-digits) format of a phone number
        open var `e164`: String?
        // "True" if the number is in a special format (for example N11 code)
        open var `special`: Bool?
        // E.164 (11-digits) format of a phone number without the plus sign ('+')
        open var `normalized`: String?
        // Information on a country the phone number belongs to
        open var `country`: [ParsePhoneNumber_CountryInfo]?
        convenience public init(uri: String? = nil, homeCountry: [ParsePhoneNumber_CountryInfo]? = nil, phoneNumbers: [ParsePhoneNumber_PhoneNumberInfo]? = nil, originalString: String? = nil, areaCode: String? = nil, formattedNational: String? = nil, formattedInternational: String? = nil, dialable: String? = nil, e164: String? = nil, special: Bool? = nil, normalized: String? = nil, country: [ParsePhoneNumber_CountryInfo]? = nil) {
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
        required public init?(map: Map) {
            super.init(map: map)
        }
        public override init() {
            super.init()
        }
        open override func mapping(map: Map) {
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
}
