import Foundation
import ObjectMapper
open class AccountDeviceUpdate: Mappable {
    /*
    Address for emergency cases. The same emergency address is assigned to all numbers of a single device
    */
    open var `emergencyServiceAddress`: EmergencyAddressInfoRequest?
    /*
    Information on extension that the device is assigned to
    */
    open var `extension`: DeviceUpdateExtensionInfo?
    /*
    Information on phone lines added to a device
    */
    open var `phoneLines`: DeviceUpdatePhoneLinesInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(emergencyServiceAddress: EmergencyAddressInfoRequest? = nil, extension: DeviceUpdateExtensionInfo? = nil, phoneLines: DeviceUpdatePhoneLinesInfo? = nil) {
        self.init()
        self.emergencyServiceAddress = `emergencyServiceAddress`
        self.extension = `extension`
        self.phoneLines = `phoneLines`
    }
    open func mapping(map: Map) {
        `emergencyServiceAddress` <- map["emergencyServiceAddress"]
        `extension` <- map["extension"]
        `phoneLines` <- map["phoneLines"]
    }
}
