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
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, homeCountry: [GetCountryInfoNumberParser]? = nil, phoneNumbers: [PhoneNumberInfoNumberParser]? = nil) {
        self.init()
        self.uri = `uri`
        self.homeCountry = `homeCountry`
        self.phoneNumbers = `phoneNumbers`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `homeCountry` <- map["homeCountry"]
        `phoneNumbers` <- map["phoneNumbers"]
    }
}
