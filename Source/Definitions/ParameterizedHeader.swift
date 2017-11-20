import Foundation
import ObjectMapper
open class ParameterizedHeader: Mappable {
    /*
    */
    open var `value`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(value: String? = nil) {
        self.init()
        self.value = `value`
    }
    open func mapping(map: Map) {
        `value` <- map["value"]
    }
}
