import Foundation
import ObjectMapper
open class RegistrationResponse: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `device`: DeviceResource?
    /*
    */
    open var `sipInfo`: [SipInfo]?
    /*
    */
    open var `sipFlags`: SipFlags?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, device: DeviceResource? = nil, sipInfo: [SipInfo]? = nil, sipFlags: SipFlags? = nil) {
        self.init()
        self.uri = `uri`
        self.device = `device`
        self.sipInfo = `sipInfo`
        self.sipFlags = `sipFlags`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `device` <- map["device"]
        `sipInfo` <- map["sipInfo"]
        `sipFlags` <- map["sipFlags"]
    }
}
