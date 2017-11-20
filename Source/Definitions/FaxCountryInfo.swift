import Foundation
import ObjectMapper
open class FaxCountryInfo: Mappable {
    /*
    Internal identifier of a home country
    */
    open var `id`: String?
    /*
    Country code in ISO 3166-1 alpha-2. If specified then country ID cannot be specified
    */
    open var `isoCode`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, isoCode: String? = nil) {
        self.init()
        self.id = `id`
        self.isoCode = `isoCode`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `isoCode` <- map["isoCode"]
    }
}
