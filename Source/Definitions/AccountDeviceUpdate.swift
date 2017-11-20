import Foundation
import ObjectMapper
open class AccountDeviceUpdate: Mappable {
    /*
    Address for emergency cases. The same emergency address is assigned to all numbers of a single device
    */
    open var `emergencyServiceAddress`: EmergencyAddressInfoRequest?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(emergencyServiceAddress: EmergencyAddressInfoRequest? = nil) {
        self.init()
        self.emergencyServiceAddress = `emergencyServiceAddress`
    }
    open func mapping(map: Map) {
        `emergencyServiceAddress` <- map["emergencyServiceAddress"]
    }
}
