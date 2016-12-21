import Foundation
import ObjectMapper
import Alamofire
open class ExtensionServiceFeatureInfo: Mappable {
    // Feature status; shows feature availability for an extension
    open var `enabled`: Bool?
    // Feature name, see all available values in Service Feature List
    open var `featureName`: String?
    // Reason of limitation for a particular service feature. Returned only if the enabled parameter value is 'False', see Service Feature Limitations and Reasons. When retrieving service features for an extension, the reasons for the limitations, if any, are returned in response
    open var `reason`: String?
    public init() {
    }
    convenience public init(enabled: Bool? = nil, featureName: String? = nil, reason: String? = nil) {
        self.init()
        self.enabled = `enabled`
        self.featureName = `featureName`
        self.reason = `reason`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `enabled` <- map["enabled"]
        `featureName` <- map["featureName"]
        `reason` <- map["reason"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
