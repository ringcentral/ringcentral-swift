import Foundation
import ObjectMapper
open class BrandInfo: Mappable {
    /*
    Internal identifier of a brand
    */
    open var `id`: String?
    /*
    Brand name, for example  RingCentral UK ,  ClearFax
    */
    open var `name`: String?
    /*
    Home country information
    */
    open var `homeCountry`: CountryInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, name: String? = nil, homeCountry: CountryInfo? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
        self.homeCountry = `homeCountry`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `homeCountry` <- map["homeCountry"]
    }
}
