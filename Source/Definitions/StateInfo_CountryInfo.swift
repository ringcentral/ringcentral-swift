import Foundation
import ObjectMapper
open class StateInfo_CountryInfo: Mappable {
    // Internal identifier of a state
    open var `id`: String?
    // Canonical URI of a state
    open var `uri`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
    }
}
