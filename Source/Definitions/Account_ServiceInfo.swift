import Foundation
import ObjectMapper
open class Account_ServiceInfo: Mappable {
    /*
    Canonical URI of a service info resource
    */
    open var `uri`: String?
    /*
    Information on account billing plan
    */
    open var `billingPlan`: BillingPlanInfo?
    /*
    Information on account brand
    */
    open var `brand`: BrandInfo?
    /*
    Information on account service plan
    */
    open var `servicePlan`: ServicePlanInfo?
    /*
    Information on account target service plan
    */
    open var `targetServicePlan`: TargetServicePlanInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, billingPlan: BillingPlanInfo? = nil, brand: BrandInfo? = nil, servicePlan: ServicePlanInfo? = nil, targetServicePlan: TargetServicePlanInfo? = nil) {
        self.init()
        self.uri = `uri`
        self.billingPlan = `billingPlan`
        self.brand = `brand`
        self.servicePlan = `servicePlan`
        self.targetServicePlan = `targetServicePlan`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `billingPlan` <- map["billingPlan"]
        `brand` <- map["brand"]
        `servicePlan` <- map["servicePlan"]
        `targetServicePlan` <- map["targetServicePlan"]
    }
}
