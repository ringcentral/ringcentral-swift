import Foundation
import ObjectMapper
open class AccountLimitsResource: Mappable {
    /*
    */
    open var `freeSoftPhoneLinesPerExtension`: Int?
    /*
    */
    open var `meetingSize`: Int?
    /*
    */
    open var `maxMonitoredExtensionsPerUser`: Int?
    /*
    */
    open var `maxFreeDigitalLines`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(freeSoftPhoneLinesPerExtension: Int? = nil, meetingSize: Int? = nil, maxMonitoredExtensionsPerUser: Int? = nil, maxFreeDigitalLines: Int? = nil) {
        self.init()
        self.freeSoftPhoneLinesPerExtension = `freeSoftPhoneLinesPerExtension`
        self.meetingSize = `meetingSize`
        self.maxMonitoredExtensionsPerUser = `maxMonitoredExtensionsPerUser`
        self.maxFreeDigitalLines = `maxFreeDigitalLines`
    }
    open func mapping(map: Map) {
        `freeSoftPhoneLinesPerExtension` <- map["freeSoftPhoneLinesPerExtension"]
        `meetingSize` <- map["meetingSize"]
        `maxMonitoredExtensionsPerUser` <- map["maxMonitoredExtensionsPerUser"]
        `maxFreeDigitalLines` <- map["maxFreeDigitalLines"]
    }
}
