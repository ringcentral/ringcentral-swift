import Foundation
import ObjectMapper
open class DeviceOrderResource: Mappable {
    /*
    */
    open var `accountId`: String?
    /*
    */
    open var `requestNumber`: String?
    /*
    */
    open var `distributorName`: String?
    /*
    */
    open var `trackingNumber`: String?
    /*
    */
    open var `shippingCarrier`: String?
    /*
    */
    open var `devices`: [DeviceInstance]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(accountId: String? = nil, requestNumber: String? = nil, distributorName: String? = nil, trackingNumber: String? = nil, shippingCarrier: String? = nil, devices: [DeviceInstance]? = nil) {
        self.init()
        self.accountId = `accountId`
        self.requestNumber = `requestNumber`
        self.distributorName = `distributorName`
        self.trackingNumber = `trackingNumber`
        self.shippingCarrier = `shippingCarrier`
        self.devices = `devices`
    }
    open func mapping(map: Map) {
        `accountId` <- map["accountId"]
        `requestNumber` <- map["requestNumber"]
        `distributorName` <- map["distributorName"]
        `trackingNumber` <- map["trackingNumber"]
        `shippingCarrier` <- map["shippingCarrier"]
        `devices` <- map["devices"]
    }
}
