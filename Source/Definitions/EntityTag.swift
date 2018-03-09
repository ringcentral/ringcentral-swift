import Foundation
import ObjectMapper
open class EntityTag: Mappable {
    /*
    */
    open var `value`: String?
    /*
    */
    open var `weak`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(value: String? = nil, weak: Bool? = nil) {
        self.init()
        self.value = `value`
        self.weak = `weak`
    }
    open func mapping(map: Map) {
        `value` <- map["value"]
        `weak` <- map["weak"]
    }
}
