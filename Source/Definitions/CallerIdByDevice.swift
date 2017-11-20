import Foundation
import ObjectMapper
open class CallerIdByDevice: Mappable {
    /*
    */
    open var `device`: CallerIdDeviceInfo?
    /*
    */
    open var `callerId`: CallerIdByDeviceInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(device: CallerIdDeviceInfo? = nil, callerId: CallerIdByDeviceInfo? = nil) {
        self.init()
        self.device = `device`
        self.callerId = `callerId`
    }
    open func mapping(map: Map) {
        `device` <- map["device"]
        `callerId` <- map["callerId"]
    }
}
