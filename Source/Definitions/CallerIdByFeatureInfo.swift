import Foundation
import ObjectMapper
open class CallerIdByFeatureInfo: Mappable {
    /*
    If 'PhoneNumber' value is specified, then a certain phone number is shown as a caller ID when using this telephony feature. If 'Blocked' value is specified, then a caller ID is hidden. The value 'CurrentLocation' can be specified for 'RingOut' feature only. The default is 'PhoneNumber' = ['PhoneNumber', 'Blocked', 'CurrentLocation']
    */
    open var `type`: String?
    /*
    */
    open var `phoneInfo`: CallerIdPhoneInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(type: String? = nil, phoneInfo: CallerIdPhoneInfo? = nil) {
        self.init()
        self.type = `type`
        self.phoneInfo = `phoneInfo`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `phoneInfo` <- map["phoneInfo"]
    }
}
