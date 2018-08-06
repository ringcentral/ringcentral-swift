import Foundation
import ObjectMapper
open class AccountLimits: Mappable {
    /*
    Max number of free softphone phone lines per user extension
    */
    open var `freeSoftPhoneLinesPerExtension`: Int?
    /*
    Max number of participants in RingCentral Meeting hosted by this account's user
    */
    open var `meetingSize`: Int?
    /*
    Max number of extensions which can be included in the list of users monitored for Presence
    */
    open var `maxMonitoredExtensionsPerUser`: Int?
    /*
    Max length of extension numbers of an account; depends on account type
    */
    open var `maxExtensionNumberLength`: Int?
    /*
    Length of a site code
    */
    open var `siteCodeLength`: Int?
    /*
    Length of a short extension number
    */
    open var `shortExtensionNumberLength`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(freeSoftPhoneLinesPerExtension: Int? = nil, meetingSize: Int? = nil, maxMonitoredExtensionsPerUser: Int? = nil, maxExtensionNumberLength: Int? = nil, siteCodeLength: Int? = nil, shortExtensionNumberLength: Int? = nil) {
        self.init()
        self.freeSoftPhoneLinesPerExtension = `freeSoftPhoneLinesPerExtension`
        self.meetingSize = `meetingSize`
        self.maxMonitoredExtensionsPerUser = `maxMonitoredExtensionsPerUser`
        self.maxExtensionNumberLength = `maxExtensionNumberLength`
        self.siteCodeLength = `siteCodeLength`
        self.shortExtensionNumberLength = `shortExtensionNumberLength`
    }
    open func mapping(map: Map) {
        `freeSoftPhoneLinesPerExtension` <- map["freeSoftPhoneLinesPerExtension"]
        `meetingSize` <- map["meetingSize"]
        `maxMonitoredExtensionsPerUser` <- map["maxMonitoredExtensionsPerUser"]
        `maxExtensionNumberLength` <- map["maxExtensionNumberLength"]
        `siteCodeLength` <- map["siteCodeLength"]
        `shortExtensionNumberLength` <- map["shortExtensionNumberLength"]
    }
}
