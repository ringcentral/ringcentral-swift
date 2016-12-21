import Foundation
import ObjectMapper
import Alamofire
open class Account_ServiceInfo: Mappable {
    // Canonical URI of a service info resource
    open var `uri`: String?
    // Information on account billing plan
    open var `billingPlan`: BillingPlanInfo?
    // Information on account brand
    open var `brand`: BrandInfo?
    // Information on account service plan
    open var `servicePlan`: ServicePlanInfo?
    // Information on account target service plan
    open var `targetServicePlan`: TargetServicePlanInfo?
    public init() {
    }
    convenience public init(uri: String? = nil, billingPlan: BillingPlanInfo? = nil, brand: BrandInfo? = nil, servicePlan: ServicePlanInfo? = nil, targetServicePlan: TargetServicePlanInfo? = nil) {
        self.init()
        self.uri = `uri`
        self.billingPlan = `billingPlan`
        self.brand = `brand`
        self.servicePlan = `servicePlan`
        self.targetServicePlan = `targetServicePlan`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `billingPlan` <- map["billingPlan"]
        `brand` <- map["brand"]
        `servicePlan` <- map["servicePlan"]
        `targetServicePlan` <- map["targetServicePlan"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
