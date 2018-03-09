import Foundation
import ObjectMapper
open class RegistrationRequest: Mappable {
    /*
    */
    open var `device`: DeviceToRegister?
    /*
    */
    open var `sipInfo`: [SipDetailsToRegister]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(device: DeviceToRegister? = nil, sipInfo: [SipDetailsToRegister]? = nil) {
        self.init()
        self.device = `device`
        self.sipInfo = `sipInfo`
    }
    open func mapping(map: Map) {
        `device` <- map["device"]
        `sipInfo` <- map["sipInfo"]
    }
}
