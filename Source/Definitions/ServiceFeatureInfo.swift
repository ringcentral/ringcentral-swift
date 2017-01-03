import Foundation
import ObjectMapper
open class ServiceFeatureInfo: Definition {
    // Feature name, see all available values in Service Feature List
    open var `featureName`: String?
    // Feature status, shows feature availability for the extension
    open var `enabled`: Bool?
    convenience public init(featureName: String? = nil, enabled: Bool? = nil) {
        self.init()
        self.featureName = `featureName`
        self.enabled = `enabled`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `featureName` <- map["featureName"]
        `enabled` <- map["enabled"]
    }
}
