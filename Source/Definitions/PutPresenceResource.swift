import Foundation
import ObjectMapper
open class PutPresenceResource: Mappable {
    /*
    */
    open var `userStatus`: String?
    /*
    */
    open var `message`: String?
    /*
    */
    open var `dndStatus`: String?
    /*
    */
    open var `allowSeeMyPresence`: Bool?
    /*
    */
    open var `ringOnMonitoredCall`: Bool?
    /*
    */
    open var `pickUpCallsOnHold`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(userStatus: String? = nil, message: String? = nil, dndStatus: String? = nil, allowSeeMyPresence: Bool? = nil, ringOnMonitoredCall: Bool? = nil, pickUpCallsOnHold: Bool? = nil) {
        self.init()
        self.userStatus = `userStatus`
        self.message = `message`
        self.dndStatus = `dndStatus`
        self.allowSeeMyPresence = `allowSeeMyPresence`
        self.ringOnMonitoredCall = `ringOnMonitoredCall`
        self.pickUpCallsOnHold = `pickUpCallsOnHold`
    }
    open func mapping(map: Map) {
        `userStatus` <- map["userStatus"]
        `message` <- map["message"]
        `dndStatus` <- map["dndStatus"]
        `allowSeeMyPresence` <- map["allowSeeMyPresence"]
        `ringOnMonitoredCall` <- map["ringOnMonitoredCall"]
        `pickUpCallsOnHold` <- map["pickUpCallsOnHold"]
    }
}
