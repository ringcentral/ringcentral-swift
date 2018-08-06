import Foundation
import ObjectMapper
open class ExtensionServiceFeatureInfo: Mappable {
    /*
    Feature status; shows feature availability for an extension
    */
    open var `enabled`: Bool?
    /*
    Feature name
    */
    open var `featureName`: String?
    /*
    Reason of limitation for a particular service feature. Returned only if the enabled parameter value is 'False', see Service Feature Limitations and Reasons. When retrieving service features for an extension, the reasons for the limitations, if any, are returned in response
    */
    open var `reason`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(enabled: Bool? = nil, featureName: String? = nil, reason: String? = nil) {
        self.init()
        self.enabled = `enabled`
        self.featureName = `featureName`
        self.reason = `reason`
    }
    open func mapping(map: Map) {
        `enabled` <- map["enabled"]
        `featureName` <- map["featureName"]
        `reason` <- map["reason"]
    }
}
