import Foundation
import ObjectMapper
open class BrandResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `homeCountry`: CountryResource?
    /*
    */
    open var `currency`: Currency?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, name: String? = nil, homeCountry: CountryResource? = nil, currency: Currency? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.name = `name`
        self.homeCountry = `homeCountry`
        self.currency = `currency`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `homeCountry` <- map["homeCountry"]
        `currency` <- map["currency"]
    }
}
