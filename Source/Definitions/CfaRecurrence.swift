import Foundation
import ObjectMapper
open class CfaRecurrence: Mappable {
    /*
    */
    open var `pattern`: String?
    /*
    */
    open var `value`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(pattern: String? = nil, value: String? = nil) {
        self.init()
        self.pattern = `pattern`
        self.value = `value`
    }
    open func mapping(map: Map) {
        `pattern` <- map["pattern"]
        `value` <- map["value"]
    }
}
