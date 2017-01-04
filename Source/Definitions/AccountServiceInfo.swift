import Foundation
import ObjectMapper
open class AccountServiceInfo: Mappable {
    // Canonical URI of the account Service Info resource
    open var `uri`: String?
    // Account Service Plan name
    open var `servicePlanName`: String?
    // Information on account brand
    open var `brand`: BrandInfo?
    // Information on account service plan
    open var `servicePlan`: ServicePlanInfo?
    // Information on account billing plan
    open var `billingPlan`: BillingPlanInfo?
    // Service features information, see Service Feature List
    open var `serviceFeatures`: [ServiceFeatureInfo]?
    // Limits which are effective for the account
    open var `limits`: AccountLimits?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, servicePlanName: String? = nil, brand: BrandInfo? = nil, servicePlan: ServicePlanInfo? = nil, billingPlan: BillingPlanInfo? = nil, serviceFeatures: [ServiceFeatureInfo]? = nil, limits: AccountLimits? = nil) {
        self.init()
        self.uri = `uri`
        self.servicePlanName = `servicePlanName`
        self.brand = `brand`
        self.servicePlan = `servicePlan`
        self.billingPlan = `billingPlan`
        self.serviceFeatures = `serviceFeatures`
        self.limits = `limits`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `servicePlanName` <- map["servicePlanName"]
        `brand` <- map["brand"]
        `servicePlan` <- map["servicePlan"]
        `billingPlan` <- map["billingPlan"]
        `serviceFeatures` <- map["serviceFeatures"]
        `limits` <- map["limits"]
    }
}
