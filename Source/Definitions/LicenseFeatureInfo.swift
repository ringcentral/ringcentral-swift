import Foundation
import ObjectMapper
open class LicenseFeatureInfo: Mappable {
    /*
    Internal identifier of an feature
    */
    open var `id`: String?
    /*
    Full name of a feature
    */
    open var `name`: String?
    /*
    Maximum count of licenses of specific type per account
    */
    open var `limit`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, name: String? = nil, limit: Int? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
        self.limit = `limit`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `limit` <- map["limit"]
    }
}
