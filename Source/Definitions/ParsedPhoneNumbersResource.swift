import Foundation
import ObjectMapper
open class ParsedPhoneNumbersResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `homeCountry`: HomeCountryResource?
    /*
    */
    open var `phoneNumbers`: [ParsedNumberResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, homeCountry: HomeCountryResource? = nil, phoneNumbers: [ParsedNumberResource]? = nil) {
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
