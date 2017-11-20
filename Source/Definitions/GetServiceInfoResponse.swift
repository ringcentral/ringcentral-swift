import Foundation
import ObjectMapper
open class GetServiceInfoResponse: Mappable {
    /*
    Canonical URI of the account Service Info resource
    */
    open var `uri`: String?
    /*
    Account Service Plan name
    */
    open var `servicePlanName`: String?
    /*
    Service features information, see Service Feature List
    */
    open var `serviceFeatures`: [ServiceFeatureInfo]?
    /*
    Limits which are effective for the account
    */
    open var `limits`: [AccountLimits]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, servicePlanName: String? = nil, serviceFeatures: [ServiceFeatureInfo]? = nil, limits: [AccountLimits]? = nil) {
        self.init()
        self.uri = `uri`
        self.servicePlanName = `servicePlanName`
        self.serviceFeatures = `serviceFeatures`
        self.limits = `limits`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `servicePlanName` <- map["servicePlanName"]
        `serviceFeatures` <- map["serviceFeatures"]
        `limits` <- map["limits"]
    }
}
