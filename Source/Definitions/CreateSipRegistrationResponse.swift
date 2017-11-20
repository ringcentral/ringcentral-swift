import Foundation
import ObjectMapper
open class CreateSipRegistrationResponse: Mappable {
    /*
    SIP settings for device
    */
    open var `sipInfo`: [SIPInfoResponse]?
    /*
    SIP flags data
    */
    open var `sipFlags`: [SIPFlagsRespones]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(sipInfo: [SIPInfoResponse]? = nil, sipFlags: [SIPFlagsRespones]? = nil) {
        self.init()
        self.sipInfo = `sipInfo`
        self.sipFlags = `sipFlags`
    }
    open func mapping(map: Map) {
        `sipInfo` <- map["sipInfo"]
        `sipFlags` <- map["sipFlags"]
    }
}
