import Foundation
import ObjectMapper
open class DeviceUpdatePhoneLinesInfo: Mappable {
    /*
    Information on phone lines added to a device
    */
    open var `phoneLines`: [UpdateDevicePhoneInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneLines: [UpdateDevicePhoneInfo]? = nil) {
        self.init()
        self.phoneLines = `phoneLines`
    }
    open func mapping(map: Map) {
        `phoneLines` <- map["phoneLines"]
    }
}
