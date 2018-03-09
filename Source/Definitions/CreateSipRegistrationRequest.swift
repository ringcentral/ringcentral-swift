import Foundation
import ObjectMapper
open class CreateSipRegistrationRequest: Mappable {
    /*
    Device unique description
    */
    open var `device`: [DeviceInfoRequest]?
    /*
    SIP settings for device
    */
    open var `sipInfo`: [SIPInfoRequest]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(device: [DeviceInfoRequest]? = nil, sipInfo: [SIPInfoRequest]? = nil) {
        self.init()
        self.device = `device`
        self.sipInfo = `sipInfo`
    }
    open func mapping(map: Map) {
        `device` <- map["device"]
        `sipInfo` <- map["sipInfo"]
    }
}
