import Foundation
import ObjectMapper
open class Photo: Mappable {
    /*
    */
    open var `type`: String?
    /*
    */
    open var `value`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(type: String? = nil, value: String? = nil) {
        self.init()
        self.type = `type`
        self.value = `value`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `value` <- map["value"]
    }
}
