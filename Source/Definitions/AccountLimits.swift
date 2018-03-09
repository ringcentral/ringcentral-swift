import Foundation
import ObjectMapper
open class AccountLimits: Mappable {
    /*
    The maximum number of free softphone phone lines per user extension
    */
    open var `freeSoftPhoneLinesPerExtension`: Int?
    /*
    The maximum number of participants in RingCentral Meeting hosted by this account's user
    */
    open var `meetingSize`: Int?
    /*
    The maximum number of extensions which can be included in the list of users monitored for Presence
    */
    open var `maxMonitoredExtensionsPerUser`: Int?
    /*
    Maximum length for extension numbers of an account; depends on account type. The default value is 5
    */
    open var `maxExtensionNumberLength`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(freeSoftPhoneLinesPerExtension: Int? = nil, meetingSize: Int? = nil, maxMonitoredExtensionsPerUser: Int? = nil, maxExtensionNumberLength: Int? = nil) {
        self.init()
        self.freeSoftPhoneLinesPerExtension = `freeSoftPhoneLinesPerExtension`
        self.meetingSize = `meetingSize`
        self.maxMonitoredExtensionsPerUser = `maxMonitoredExtensionsPerUser`
        self.maxExtensionNumberLength = `maxExtensionNumberLength`
    }
    open func mapping(map: Map) {
        `freeSoftPhoneLinesPerExtension` <- map["freeSoftPhoneLinesPerExtension"]
        `meetingSize` <- map["meetingSize"]
        `maxMonitoredExtensionsPerUser` <- map["maxMonitoredExtensionsPerUser"]
        `maxExtensionNumberLength` <- map["maxExtensionNumberLength"]
    }
}
