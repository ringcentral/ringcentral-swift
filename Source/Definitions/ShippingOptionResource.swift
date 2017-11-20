import Foundation
import ObjectMapper
open class ShippingOptionResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `method`: ShippingMethod?
    /*
    */
    open var `quantity`: Int?
    /*
    */
    open var `price`: Double?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, method: ShippingMethod? = nil, quantity: Int? = nil, price: Double? = nil) {
        self.init()
        self.uri = `uri`
        self.method = `method`
        self.quantity = `quantity`
        self.price = `price`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `method` <- map["method"]
        `quantity` <- map["quantity"]
        `price` <- map["price"]
    }
}
