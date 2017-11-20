import Foundation
import ObjectMapper
open class ConferencingNumberResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `phoneNumber`: String?
    /*
    */
    open var `country`: CountryResource?
    /*
    */
    open var `location`: String?
    /*
    */
    open var `hasGreeting`: Bool?
    /*
    */
    open var `default`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, phoneNumber: String? = nil, country: CountryResource? = nil, location: String? = nil, hasGreeting: Bool? = nil, default: Bool? = nil) {
        self.init()
        self.uri = `uri`
        self.phoneNumber = `phoneNumber`
        self.country = `country`
        self.location = `location`
        self.hasGreeting = `hasGreeting`
        self.default = `default`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `phoneNumber` <- map["phoneNumber"]
        `country` <- map["country"]
        `location` <- map["location"]
        `hasGreeting` <- map["hasGreeting"]
        `default` <- map["default"]
    }
}
