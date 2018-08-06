import Foundation
import ObjectMapper
open class GreetingResource: Mappable {
    /*
    */
    open var `type`: String?
    /*
    'Default' value specifies that all greetings of that type (in all languages) are default, if at least one greeting (in any language) of the specified type is custom, then 'Custom' value is returned.
    */
    open var `mode`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(type: String? = nil, mode: String? = nil) {
        self.init()
        self.type = `type`
        self.mode = `mode`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `mode` <- map["mode"]
    }
}
