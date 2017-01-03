import Foundation
import ObjectMapper
open class ExtensionServiceFeatureInfo: Definition {
    // Feature status; shows feature availability for an extension
    open var `enabled`: Bool?
    // Feature name, see all available values in Service Feature List
    open var `featureName`: String?
    // Reason of limitation for a particular service feature. Returned only if the enabled parameter value is 'False', see Service Feature Limitations and Reasons. When retrieving service features for an extension, the reasons for the limitations, if any, are returned in response
    open var `reason`: String?
    convenience public init(enabled: Bool? = nil, featureName: String? = nil, reason: String? = nil) {
        self.init()
        self.enabled = `enabled`
        self.featureName = `featureName`
        self.reason = `reason`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `enabled` <- map["enabled"]
        `featureName` <- map["featureName"]
        `reason` <- map["reason"]
    }
}
