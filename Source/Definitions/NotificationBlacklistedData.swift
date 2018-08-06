import Foundation
import ObjectMapper
open class NotificationBlacklistedData: Mappable {
    /*
    Time of adding subscrition to a black list in (ISO 8601)[https://en.wikipedia.org/wiki/ISO_8601] format including timezone, for example *2016-03-10T18:07:52.534Z*
    */
    open var `blacklistedAt`: String?
    /*
    Reason of adding subscrition to a black list
    */
    open var `reason`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(blacklistedAt: String? = nil, reason: String? = nil) {
        self.init()
        self.blacklistedAt = `blacklistedAt`
        self.reason = `reason`
    }
    open func mapping(map: Map) {
        `blacklistedAt` <- map["blacklistedAt"]
        `reason` <- map["reason"]
    }
}
