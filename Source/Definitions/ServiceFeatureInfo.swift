import Foundation
import ObjectMapper
open class ServiceFeatureInfo: Mappable {
    /*
    Feature name, see all available values in Service Feature List
    */
    open var `featureName`: String?
    /*
    Feature status, shows feature availability for the extension
    */
    open var `enabled`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(featureName: String? = nil, enabled: Bool? = nil) {
        self.init()
        self.featureName = `featureName`
        self.enabled = `enabled`
    }
    open func mapping(map: Map) {
        `featureName` <- map["featureName"]
        `enabled` <- map["enabled"]
    }
}
