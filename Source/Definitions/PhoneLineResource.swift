import Foundation
import ObjectMapper
open class PhoneLineResource: Mappable {
    /*
    */
    open var `lineType`: String?
    /*
    */
    open var `phoneInfo`: PhoneNumberResource?
    /*
    */
    open var `emergencyAddress`: EmergencyAddress?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(lineType: String? = nil, phoneInfo: PhoneNumberResource? = nil, emergencyAddress: EmergencyAddress? = nil) {
        self.init()
        self.lineType = `lineType`
        self.phoneInfo = `phoneInfo`
        self.emergencyAddress = `emergencyAddress`
    }
    open func mapping(map: Map) {
        `lineType` <- map["lineType"]
        `phoneInfo` <- map["phoneInfo"]
        `emergencyAddress` <- map["emergencyAddress"]
    }
}
