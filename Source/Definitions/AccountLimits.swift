import Foundation
import ObjectMapper
open class AccountLimits: Mappable {
    // The maximum number of free softphone digital lines per user extension
    open var `freeSoftPhoneLinesPerExtension`: Int?
    // The maximum number of participants in RingCentral Meeting hosted by this account's user
    open var `meetingSize`: Int?
    // The maximum number of extensions which can be included in the list of users monitored for Presence
    open var `maxMonitoredExtensionsPerUser`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(freeSoftPhoneLinesPerExtension: Int? = nil, meetingSize: Int? = nil, maxMonitoredExtensionsPerUser: Int? = nil) {
        self.init()
        self.freeSoftPhoneLinesPerExtension = `freeSoftPhoneLinesPerExtension`
        self.meetingSize = `meetingSize`
        self.maxMonitoredExtensionsPerUser = `maxMonitoredExtensionsPerUser`
    }
    open func mapping(map: Map) {
        `freeSoftPhoneLinesPerExtension` <- map["freeSoftPhoneLinesPerExtension"]
        `meetingSize` <- map["meetingSize"]
        `maxMonitoredExtensionsPerUser` <- map["maxMonitoredExtensionsPerUser"]
    }
}
