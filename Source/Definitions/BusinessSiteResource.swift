import Foundation
import ObjectMapper
open class BusinessSiteResource: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `code`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, name: String? = nil, code: String? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
        self.code = `code`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `code` <- map["code"]
    }
}
