import Foundation
import ObjectMapper
open class ShippingInfo: Mappable {
    /*
    Shipping status of the order item. It is set to 'Initial' when the order is submitted. Then it is changed to 'Accepted' when a distributor starts processing the order. Finally it is changed to Shipped which means that distributor has shipped the device.
    */
    open var `status`: String?
    /*
    Shipping carrier name. Appears only if the device status is "Shipped"
    */
    open var `carrier`: String?
    /*
    Carrier-specific tracking number. Appears only if the device status is "Shipped"
    */
    open var `trackingNumber`: String?
    /*
    Shipping method information
    */
    open var `method`: [ShippingMethod]?
    /*
    Shipping address for the order. If it coincides with the Emergency Service Address, then can be omitted. By default the same value as the emergencyServiceAddress. Multiple addresses can be specified; in case an order contains several devices, they can be delivered to different addresses
    */
    open var `address`: [ShippingAddress]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(status: String? = nil, carrier: String? = nil, trackingNumber: String? = nil, method: [ShippingMethod]? = nil, address: [ShippingAddress]? = nil) {
        self.init()
        self.status = `status`
        self.carrier = `carrier`
        self.trackingNumber = `trackingNumber`
        self.method = `method`
        self.address = `address`
    }
    open func mapping(map: Map) {
        `status` <- map["status"]
        `carrier` <- map["carrier"]
        `trackingNumber` <- map["trackingNumber"]
        `method` <- map["method"]
        `address` <- map["address"]
    }
}
