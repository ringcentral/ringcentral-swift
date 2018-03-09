import Foundation
import ObjectMapper
open class BillingStatementResource: Mappable {
    /*
    */
    open var `fees`: [FeeChargeResource]?
    /*
    */
    open var `charges`: [FeeChargeResource]?
    /*
    */
    open var `totalCharges`: Double?
    /*
    */
    open var `totalFees`: Double?
    /*
    */
    open var `subtotal`: Double?
    /*
    */
    open var `currency`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(fees: [FeeChargeResource]? = nil, charges: [FeeChargeResource]? = nil, totalCharges: Double? = nil, totalFees: Double? = nil, subtotal: Double? = nil, currency: String? = nil) {
        self.init()
        self.fees = `fees`
        self.charges = `charges`
        self.totalCharges = `totalCharges`
        self.totalFees = `totalFees`
        self.subtotal = `subtotal`
        self.currency = `currency`
    }
    open func mapping(map: Map) {
        `fees` <- map["fees"]
        `charges` <- map["charges"]
        `totalCharges` <- map["totalCharges"]
        `totalFees` <- map["totalFees"]
        `subtotal` <- map["subtotal"]
        `currency` <- map["currency"]
    }
}
