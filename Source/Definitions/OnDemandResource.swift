import Foundation
import ObjectMapper
open class OnDemandResource: Mappable {
    /*
    Flag for controlling OnDemand Call Recording settings
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
