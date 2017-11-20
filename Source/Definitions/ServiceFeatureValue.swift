import Foundation
import ObjectMapper
open class ServiceFeatureValue: Mappable {
    /*
    */
    open var `featureName`: String?
    /*
    */
    open var `enabled`: Bool?
    /*
    */
    open var `reason`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(featureName: String? = nil, enabled: Bool? = nil, reason: String? = nil) {
        self.init()
        self.featureName = `featureName`
        self.enabled = `enabled`
        self.reason = `reason`
    }
    open func mapping(map: Map) {
        `featureName` <- map["featureName"]
        `enabled` <- map["enabled"]
        `reason` <- map["reason"]
    }
}
