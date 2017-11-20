import Foundation
import ObjectMapper
open class Feature: Mappable {
    /*
    */
    open var `enabled`: Bool?
    /*
    */
    open var `reason`: Reason?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(enabled: Bool? = nil, reason: Reason? = nil) {
        self.init()
        self.enabled = `enabled`
        self.reason = `reason`
    }
    open func mapping(map: Map) {
        `enabled` <- map["enabled"]
        `reason` <- map["reason"]
    }
}
