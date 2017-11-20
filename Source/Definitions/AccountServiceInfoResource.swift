import Foundation
import ObjectMapper
open class AccountServiceInfoResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `servicePlanName`: String?
    /*
    */
    open var `brand`: Brand?
    /*
    */
    open var `servicePlan`: ServicePlan?
    /*
    */
    open var `targetServicePlan`: ServicePlan?
    /*
    */
    open var `billingPlan`: BillingPlanResource?
    /*
    */
    open var `serviceFeatures`: [ServiceFeatureValue]?
    /*
    */
    open var `limits`: AccountLimitsResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, servicePlanName: String? = nil, brand: Brand? = nil, servicePlan: ServicePlan? = nil, targetServicePlan: ServicePlan? = nil, billingPlan: BillingPlanResource? = nil, serviceFeatures: [ServiceFeatureValue]? = nil, limits: AccountLimitsResource? = nil) {
        self.init()
        self.uri = `uri`
        self.servicePlanName = `servicePlanName`
        self.brand = `brand`
        self.servicePlan = `servicePlan`
        self.targetServicePlan = `targetServicePlan`
        self.billingPlan = `billingPlan`
        self.serviceFeatures = `serviceFeatures`
        self.limits = `limits`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `servicePlanName` <- map["servicePlanName"]
        `brand` <- map["brand"]
        `servicePlan` <- map["servicePlan"]
        `targetServicePlan` <- map["targetServicePlan"]
        `billingPlan` <- map["billingPlan"]
        `serviceFeatures` <- map["serviceFeatures"]
        `limits` <- map["limits"]
    }
}
