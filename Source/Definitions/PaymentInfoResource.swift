import Foundation
import ObjectMapper
open class PaymentInfoResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `paymentType`: String?
    /*
    */
    open var `card`: PaymentInfoCardResource?
    /*
    */
    open var `invoiceSettings`: InvoiceSettingsResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, paymentType: String? = nil, card: PaymentInfoCardResource? = nil, invoiceSettings: InvoiceSettingsResource? = nil) {
        self.init()
        self.uri = `uri`
        self.paymentType = `paymentType`
        self.card = `card`
        self.invoiceSettings = `invoiceSettings`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `paymentType` <- map["paymentType"]
        `card` <- map["card"]
        `invoiceSettings` <- map["invoiceSettings"]
    }
}
