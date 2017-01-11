import Foundation
import ObjectMapper
open class PresenceEvent: Mappable {
    // Internal identifier of an extension. Optional parameter
    open var `extensionId`: String?
    // Telephony presence status. Returned if telephony status is changed. See Telephony Status Values
    open var `telephonyStatus`: String?
    // Type of call termination. Supported for calls in 'NoCall' status. If the returned termination type is 'Intermediate' it means the call is not actually ended, the connection is established on one of the devices
    open var `terminationType`: String?
    // Order number of a notification to state the chronology
    open var `sequence`: Int?
    // Aggregated presence status, calculated from a number of sources
    open var `presenceStatus`: String?
    // User-defined presence status (as previously published by the user)
    open var `userStatus`: String?
    // Extended DnD (Do not Disturb) status
    open var `dndStatus`: String?
    // If 'True' enables other extensions to see the extension presence status
    open var `allowSeeMyPresence`: Bool?
    // If 'True' enables to ring extension phone, if any user monitored by this extension is ringing
    open var `ringOnMonitoredCall`: Bool?
    // If 'True' enables the extension user to pick up a monitored line on hold
    open var `pickUpCallsOnHold`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(extensionId: String? = nil, telephonyStatus: String? = nil, terminationType: String? = nil, sequence: Int? = nil, presenceStatus: String? = nil, userStatus: String? = nil, dndStatus: String? = nil, allowSeeMyPresence: Bool? = nil, ringOnMonitoredCall: Bool? = nil, pickUpCallsOnHold: Bool? = nil) {
        self.init()
        self.extensionId = `extensionId`
        self.telephonyStatus = `telephonyStatus`
        self.terminationType = `terminationType`
        self.sequence = `sequence`
        self.presenceStatus = `presenceStatus`
        self.userStatus = `userStatus`
        self.dndStatus = `dndStatus`
        self.allowSeeMyPresence = `allowSeeMyPresence`
        self.ringOnMonitoredCall = `ringOnMonitoredCall`
        self.pickUpCallsOnHold = `pickUpCallsOnHold`
    }
    open func mapping(map: Map) {
        `extensionId` <- map["extensionId"]
        `telephonyStatus` <- map["telephonyStatus"]
        `terminationType` <- map["terminationType"]
        `sequence` <- map["sequence"]
        `presenceStatus` <- map["presenceStatus"]
        `userStatus` <- map["userStatus"]
        `dndStatus` <- map["dndStatus"]
        `allowSeeMyPresence` <- map["allowSeeMyPresence"]
        `ringOnMonitoredCall` <- map["ringOnMonitoredCall"]
        `pickUpCallsOnHold` <- map["pickUpCallsOnHold"]
    }
}
