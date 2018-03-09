import Foundation
import ObjectMapper
open class InvoiceSettingsResource: Mappable {
    /*
    */
    open var `maxAmountPerFirstMonth`: Int?
    /*
    */
    open var `maxAmountPerMonth`: Int?
    /*
    */
    open var `paymentTerm`: Int?
    /*
    */
    open var `period`: Int?
    /*
    */
    open var `address`: Address?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(maxAmountPerFirstMonth: Int? = nil, maxAmountPerMonth: Int? = nil, paymentTerm: Int? = nil, period: Int? = nil, address: Address? = nil) {
        self.init()
        self.maxAmountPerFirstMonth = `maxAmountPerFirstMonth`
        self.maxAmountPerMonth = `maxAmountPerMonth`
        self.paymentTerm = `paymentTerm`
        self.period = `period`
        self.address = `address`
    }
    open func mapping(map: Map) {
        `maxAmountPerFirstMonth` <- map["maxAmountPerFirstMonth"]
        `maxAmountPerMonth` <- map["maxAmountPerMonth"]
        `paymentTerm` <- map["paymentTerm"]
        `period` <- map["period"]
        `address` <- map["address"]
    }
}
