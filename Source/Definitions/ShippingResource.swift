import Foundation
import ObjectMapper
open class ShippingResource: Mappable {
    /*
    */
    open var `address`: EmergencyServiceAddressResource?
    /*
    */
    open var `method`: MethodResource?
    /*
    */
    open var `status`: String?
    /*
    */
    open var `carrier`: String?
    /*
    */
    open var `trackingNumber`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(address: EmergencyServiceAddressResource? = nil, method: MethodResource? = nil, status: String? = nil, carrier: String? = nil, trackingNumber: String? = nil) {
        self.init()
        self.address = `address`
        self.method = `method`
        self.status = `status`
        self.carrier = `carrier`
        self.trackingNumber = `trackingNumber`
    }
    open func mapping(map: Map) {
        `address` <- map["address"]
        `method` <- map["method"]
        `status` <- map["status"]
        `carrier` <- map["carrier"]
        `trackingNumber` <- map["trackingNumber"]
    }
}
