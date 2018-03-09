import Foundation
import ObjectMapper
open class PaymentInfoCardResource: Mappable {
    /*
    */
    open var `cardType`: String?
    /*
    */
    open var `number`: String?
    /*
    */
    open var `securityCode`: String?
    /*
    */
    open var `expiry`: String?
    /*
    */
    open var `token`: String?
    /*
    */
    open var `holder`: PaymentInfoCardHolderResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(cardType: String? = nil, number: String? = nil, securityCode: String? = nil, expiry: String? = nil, token: String? = nil, holder: PaymentInfoCardHolderResource? = nil) {
        self.init()
        self.cardType = `cardType`
        self.number = `number`
        self.securityCode = `securityCode`
        self.expiry = `expiry`
        self.token = `token`
        self.holder = `holder`
    }
    open func mapping(map: Map) {
        `cardType` <- map["cardType"]
        `number` <- map["number"]
        `securityCode` <- map["securityCode"]
        `expiry` <- map["expiry"]
        `token` <- map["token"]
        `holder` <- map["holder"]
    }
}
