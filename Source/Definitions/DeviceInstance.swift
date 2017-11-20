import Foundation
import ObjectMapper
open class DeviceInstance: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `serial`: String?
    /*
    */
    open var `trackingNumber`: String?
    /*
    */
    open var `shippingCarrier`: String?
    /*
    */
    open var `rmaNumber`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, serial: String? = nil, trackingNumber: String? = nil, shippingCarrier: String? = nil, rmaNumber: String? = nil) {
        self.init()
        self.id = `id`
        self.serial = `serial`
        self.trackingNumber = `trackingNumber`
        self.shippingCarrier = `shippingCarrier`
        self.rmaNumber = `rmaNumber`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `serial` <- map["serial"]
        `trackingNumber` <- map["trackingNumber"]
        `shippingCarrier` <- map["shippingCarrier"]
        `rmaNumber` <- map["rmaNumber"]
    }
}
