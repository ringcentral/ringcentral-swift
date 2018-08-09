import Foundation
import ObjectMapper
open class DetailedExtensionPresenceWithSIPEventBody: Mappable {
    /*
    Internal identifier of an extension
    */
    open var `extensionId`: String?
    /*
    Telephony presence status. Returned if telephony status is changed.
    */
    open var `telephonyStatus`: String?
    /*
    List of the latest 10 active calls on extension
    */
    open var `activeCalls`: [ActiveCallInfo]?
    /*
    Order number of a notification to state the chronology
    */
    open var `sequence`: Int?
    /*
    Aggregated presence status, calculated from a number of sources
    */
    open var `presenceStatus`: String?
    /*
    User-defined presence status (as previously published by the user)
    */
    open var `userStatus`: String?
    /*
    Extended DnD (Do not Disturb) status
    */
    open var `dndStatus`: String?
    /*
    If 'True' enables other extensions to see the extension presence status
    */
    open var `allowSeeMyPresence`: Bool?
    /*
    If 'True' enables to ring extension phone, if any user monitored by this extension is ringing
    */
    open var `ringOnMonitoredCall`: Bool?
    /*
    If 'True' enables the extension user to pick up a monitored line on hold
    */
    open var `pickUpCallsOnHold`: Bool?
    /*
    Total number of active calls on extension at the present moment
    */
    open var `totalActiveCalls`: Int?
    /*
    Internal identifier of a subscription owner extension
    */
    open var `ownerId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(extensionId: String? = nil, telephonyStatus: String? = nil, activeCalls: [ActiveCallInfo]? = nil, sequence: Int? = nil, presenceStatus: String? = nil, userStatus: String? = nil, dndStatus: String? = nil, allowSeeMyPresence: Bool? = nil, ringOnMonitoredCall: Bool? = nil, pickUpCallsOnHold: Bool? = nil, totalActiveCalls: Int? = nil, ownerId: String? = nil) {
        self.init()
        self.extensionId = `extensionId`
        self.telephonyStatus = `telephonyStatus`
        self.activeCalls = `activeCalls`
        self.sequence = `sequence`
        self.presenceStatus = `presenceStatus`
        self.userStatus = `userStatus`
        self.dndStatus = `dndStatus`
        self.allowSeeMyPresence = `allowSeeMyPresence`
        self.ringOnMonitoredCall = `ringOnMonitoredCall`
        self.pickUpCallsOnHold = `pickUpCallsOnHold`
        self.totalActiveCalls = `totalActiveCalls`
        self.ownerId = `ownerId`
    }
    open func mapping(map: Map) {
        `extensionId` <- (map["extensionId"], StringTransform())
        `telephonyStatus` <- map["telephonyStatus"]
        `activeCalls` <- map["activeCalls"]
        `sequence` <- map["sequence"]
        `presenceStatus` <- map["presenceStatus"]
        `userStatus` <- map["userStatus"]
        `dndStatus` <- map["dndStatus"]
        `allowSeeMyPresence` <- map["allowSeeMyPresence"]
        `ringOnMonitoredCall` <- map["ringOnMonitoredCall"]
        `pickUpCallsOnHold` <- map["pickUpCallsOnHold"]
        `totalActiveCalls` <- map["totalActiveCalls"]
        `ownerId` <- map["ownerId"]
    }
}
