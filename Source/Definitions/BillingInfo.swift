import Foundation
import ObjectMapper
open class BillingInfo: Mappable {
    // Cost per minute used included in your RingCentral Plan
    open var `costIncluded`: Double?
    // Cost per minute used not included in your RingCentral Plan. for example International Calls
    open var `costPurchased`: Double?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(costIncluded: Double? = nil, costPurchased: Double? = nil) {
        self.init()
        self.costIncluded = `costIncluded`
        self.costPurchased = `costPurchased`
    }
    open func mapping(map: Map) {
        `costIncluded` <- map["costIncluded"]
        `costPurchased` <- map["costPurchased"]
    }
}
