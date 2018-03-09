import Foundation
import ObjectMapper
open class ServicePlan: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `name`: String?
    /*
    */
    open var `edition`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, name: String? = nil, edition: String? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
        self.edition = `edition`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `edition` <- map["edition"]
    }
}
