import Foundation
import ObjectMapper
open class GreetingInfo: Definition {
    // Type of a greeting, specifying the case when the greeting is played. See also Greeting Types
    open var `type`: String?
    // Predefined greeting information
    open var `preset`: PresetInfo?
    convenience public init(type: String? = nil, preset: PresetInfo? = nil) {
        self.init()
        self.type = `type`
        self.preset = `preset`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `type` <- map["type"]
        `preset` <- map["preset"]
    }
}
