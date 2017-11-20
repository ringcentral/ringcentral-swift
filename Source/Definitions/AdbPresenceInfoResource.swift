import Foundation
import ObjectMapper
open class AdbPresenceInfoResource: Mappable {
    /*
    */
    open var `accountId`: String?
    /*
    */
    open var `extensionId`: String?
    /*
    */
    open var `extensionType`: String?
    /*
    */
    open var `extensionStatus`: String?
    /*
    */
    open var `dndStatus`: String?
    /*
    */
    open var `userStatus`: String?
    /*
    */
    open var `message`: String?
    /*
    */
    open var `agentStatus`: String?
    /*
    */
    open var `extensionNumber`: String?
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
    open var `presenceFeatureAvailable`: Bool?
    /*
    */
    open var `dndFeatureAvailable`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(accountId: String? = nil, extensionId: String? = nil, extensionType: String? = nil, extensionStatus: String? = nil, dndStatus: String? = nil, userStatus: String? = nil, message: String? = nil, agentStatus: String? = nil, extensionNumber: String? = nil, allowSeeMyPresence: Bool? = nil, ringOnMonitoredCall: Bool? = nil, pickUpCallsOnHold: Bool? = nil, presenceFeatureAvailable: Bool? = nil, dndFeatureAvailable: Bool? = nil) {
        self.init()
        self.accountId = `accountId`
        self.extensionId = `extensionId`
        self.extensionType = `extensionType`
        self.extensionStatus = `extensionStatus`
        self.dndStatus = `dndStatus`
        self.userStatus = `userStatus`
        self.message = `message`
        self.agentStatus = `agentStatus`
        self.extensionNumber = `extensionNumber`
        self.allowSeeMyPresence = `allowSeeMyPresence`
        self.ringOnMonitoredCall = `ringOnMonitoredCall`
        self.pickUpCallsOnHold = `pickUpCallsOnHold`
        self.presenceFeatureAvailable = `presenceFeatureAvailable`
        self.dndFeatureAvailable = `dndFeatureAvailable`
    }
    open func mapping(map: Map) {
        `accountId` <- map["accountId"]
        `extensionId` <- map["extensionId"]
        `extensionType` <- map["extensionType"]
        `extensionStatus` <- map["extensionStatus"]
        `dndStatus` <- map["dndStatus"]
        `userStatus` <- map["userStatus"]
        `message` <- map["message"]
        `agentStatus` <- map["agentStatus"]
        `extensionNumber` <- map["extensionNumber"]
        `allowSeeMyPresence` <- map["allowSeeMyPresence"]
        `ringOnMonitoredCall` <- map["ringOnMonitoredCall"]
        `pickUpCallsOnHold` <- map["pickUpCallsOnHold"]
        `presenceFeatureAvailable` <- map["presenceFeatureAvailable"]
        `dndFeatureAvailable` <- map["dndFeatureAvailable"]
    }
}
