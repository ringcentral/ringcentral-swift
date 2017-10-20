import Foundation
import ObjectMapper
open class GreetingInfo: Mappable {
    /*
    Type of a greeting, specifying the case when the greeting is played. See also Greeting Types
    */
    open var `type`: String?
    /*
    Predefined greeting information
    */
    open var `preset`: PresetInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(type: String? = nil, preset: PresetInfo? = nil) {
        self.init()
        self.type = `type`
        self.preset = `preset`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `preset` <- map["preset"]
    }
}
