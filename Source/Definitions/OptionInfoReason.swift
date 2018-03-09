import Foundation
import ObjectMapper
open class OptionInfoReason: Mappable {
    /*
    Internal code of the option disallowance reason
    */
    open var `id`: String?
    /*
    Text description of the option disallowance reason
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
