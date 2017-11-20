import Foundation
import ObjectMapper
open class PaymentInfoCardHolderResource: Mappable {
    /*
    */
    open var `firstName`: String?
    /*
    */
    open var `lastName`: String?
    /*
    */
    open var `address`: PaymentInfoAddressResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(firstName: String? = nil, lastName: String? = nil, address: PaymentInfoAddressResource? = nil) {
        self.init()
        self.firstName = `firstName`
        self.lastName = `lastName`
        self.address = `address`
    }
    open func mapping(map: Map) {
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `address` <- map["address"]
    }
}
