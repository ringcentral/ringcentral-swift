import Foundation
import ObjectMapper
open class BlockedCallerGreetingInfo: Mappable {
    /*
    Type of a greeting
    */
    open var `type`: String?
    /*
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
