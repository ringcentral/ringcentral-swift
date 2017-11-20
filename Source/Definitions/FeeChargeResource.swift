import Foundation
import ObjectMapper
open class FeeChargeResource: Mappable {
    /*
    */
    open var `description`: String?
    /*
    */
    open var `amount`: Double?
    /*
    */
    open var `feature`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(description: String? = nil, amount: Double? = nil, feature: String? = nil) {
        self.init()
        self.description = `description`
        self.amount = `amount`
        self.feature = `feature`
    }
    open func mapping(map: Map) {
        `description` <- map["description"]
        `amount` <- map["amount"]
        `feature` <- map["feature"]
    }
}
