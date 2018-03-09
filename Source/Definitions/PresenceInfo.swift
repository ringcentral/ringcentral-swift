import Foundation
import ObjectMapper
open class PresenceInfo: Mappable {
    /*
    Canonical URI of a presence info resource
    */
    open var `uri`: String?
    /*
    If 'True' enables other extensions to see the extension presence status
    */
    open var `allowSeeMyPresence`: Bool?
    /*
    Extended DnD (Do not Disturb) status. Cannot be set for Department/Announcement/Voicemail (Take Messages Only)/Fax User/Shared Lines Group/Paging Only Group/IVR Menu/Application Extension/Park Location extensions. The 'DoNotAcceptDepartmentCalls' and 'TakeDepartmentCallsOnly' values are applicable only for extensions - members of a Department; if these values are set for department outsiders, the 400 Bad Request error code is returned. The 'TakeDepartmentCallsOnly' status can be set through the old RingCentral user interface and is available for some migrated accounts only.
    */
    open var `dndStatus`: String?
    /*
    Information on extension, for which this presence data is returned
    */
    open var `extension`: PresenceInfo_ExtensionInfo?
    /*
    Custom status message (as previously published by user)
    */
    open var `message`: String?
    /*
    If 'True' enables the extension user to pick up a monitored line on hold
    */
    open var `pickUpCallsOnHold`: Bool?
    /*
    Aggregated presence status, calculated from a number of sources
    */
    open var `presenceStatus`: String?
    /*
    If 'True' enables to ring extension phone, if any user monitored by this extension is ringing
    */
    open var `ringOnMonitoredCall`: Bool?
    /*
    Telephony presence status
    */
    open var `telephonyStatus`: String?
    /*
    User-defined presence status (as previously published by the user)
    */
    open var `userStatus`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, allowSeeMyPresence: Bool? = nil, dndStatus: String? = nil, extension: PresenceInfo_ExtensionInfo? = nil, message: String? = nil, pickUpCallsOnHold: Bool? = nil, presenceStatus: String? = nil, ringOnMonitoredCall: Bool? = nil, telephonyStatus: String? = nil, userStatus: String? = nil) {
        self.init()
        self.uri = `uri`
        self.allowSeeMyPresence = `allowSeeMyPresence`
        self.dndStatus = `dndStatus`
        self.extension = `extension`
        self.message = `message`
        self.pickUpCallsOnHold = `pickUpCallsOnHold`
        self.presenceStatus = `presenceStatus`
        self.ringOnMonitoredCall = `ringOnMonitoredCall`
        self.telephonyStatus = `telephonyStatus`
        self.userStatus = `userStatus`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `allowSeeMyPresence` <- map["allowSeeMyPresence"]
        `dndStatus` <- map["dndStatus"]
        `extension` <- map["extension"]
        `message` <- map["message"]
        `pickUpCallsOnHold` <- map["pickUpCallsOnHold"]
        `presenceStatus` <- map["presenceStatus"]
        `ringOnMonitoredCall` <- map["ringOnMonitoredCall"]
        `telephonyStatus` <- map["telephonyStatus"]
        `userStatus` <- map["userStatus"]
    }
}
