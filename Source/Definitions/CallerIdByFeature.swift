import Foundation
import ObjectMapper
open class CallerIdByFeature: Mappable {
    /*
    */
    open var `feature`: String?
    /*
    */
    open var `callerId`: CallerIdByFeatureInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(feature: String? = nil, callerId: CallerIdByFeatureInfo? = nil) {
        self.init()
        self.feature = `feature`
        self.callerId = `callerId`
    }
    open func mapping(map: Map) {
        `feature` <- map["feature"]
        `callerId` <- map["callerId"]
    }
}
