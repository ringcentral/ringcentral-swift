import Foundation
import ObjectMapper
open class CountryInfo: Definition {
    // Internal identifier of a home country
    open var `id`: String?
    // Canonical URI of a home country
    open var `uri`: String?
    // Official name of a home country
    open var `name`: String?
    convenience public init(id: String? = nil, uri: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.name = `name`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `name` <- map["name"]
    }
}
