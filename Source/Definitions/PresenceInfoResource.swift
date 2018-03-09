import Foundation
import ObjectMapper
open class PresenceInfoResource: Mappable {
    /*
    */
    open var `userStatus`: String?
    /*
    */
    open var `dndStatus`: String?
    /*
    */
    open var `message`: String?
    /*
    */
    open var `allowSeeMyPresence`: Bool?
    /*
    */
    open var `ringOnMonitoredCall`: Bool?
    /*
    */
    open var `pickUpCallsOnHold`: Bool?
    /*
    */
    open var `activeCalls`: [ActiveCallInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(userStatus: String? = nil, dndStatus: String? = nil, message: String? = nil, allowSeeMyPresence: Bool? = nil, ringOnMonitoredCall: Bool? = nil, pickUpCallsOnHold: Bool? = nil, activeCalls: [ActiveCallInfo]? = nil) {
        self.init()
        self.userStatus = `userStatus`
        self.dndStatus = `dndStatus`
        self.message = `message`
        self.allowSeeMyPresence = `allowSeeMyPresence`
        self.ringOnMonitoredCall = `ringOnMonitoredCall`
        self.pickUpCallsOnHold = `pickUpCallsOnHold`
        self.activeCalls = `activeCalls`
    }
    open func mapping(map: Map) {
        `userStatus` <- map["userStatus"]
        `dndStatus` <- map["dndStatus"]
        `message` <- map["message"]
        `allowSeeMyPresence` <- map["allowSeeMyPresence"]
        `ringOnMonitoredCall` <- map["ringOnMonitoredCall"]
        `pickUpCallsOnHold` <- map["pickUpCallsOnHold"]
        `activeCalls` <- map["activeCalls"]
    }
}
