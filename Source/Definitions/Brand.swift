import Foundation
import ObjectMapper
open class Brand: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `homeCountry`: HomeCountry?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, name: String? = nil, homeCountry: HomeCountry? = nil) {
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
