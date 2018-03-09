import Foundation
import ObjectMapper
open class Permission: Mappable {
    /*
    */
    open var `enabled`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(enabled: Bool? = nil) {
        self.init()
        self.enabled = `enabled`
    }
    open func mapping(map: Map) {
        `enabled` <- map["enabled"]
    }
}
