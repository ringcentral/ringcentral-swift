import Foundation
import ObjectMapper
open class DictionaryShippingOptions: Mappable {
    /*
    Quantity of devices to ship
    */
    open var `quantity`: Int?
    /*
    Price for shipping with the specified method (depending on the quantity value)
    */
    open var `price`: Int?
    /*
    Shipping method description
    */
    open var `method`: ShippingMethod?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(quantity: Int? = nil, price: Int? = nil, method: ShippingMethod? = nil) {
        self.init()
        self.quantity = `quantity`
        self.price = `price`
        self.method = `method`
    }
    open func mapping(map: Map) {
        `quantity` <- map["quantity"]
        `price` <- map["price"]
        `method` <- map["method"]
    }
}
