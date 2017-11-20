import Foundation
import ObjectMapper
open class Reason: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `message`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, message: String? = nil) {
        self.init()
        self.id = `id`
        self.message = `message`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `message` <- map["message"]
    }
}
