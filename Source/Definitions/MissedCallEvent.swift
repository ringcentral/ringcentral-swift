import Foundation
import ObjectMapper
open class MissedCallEvent: Mappable {
    /*
    Universally unique identifier of a notification
    */
    open var `uuid`: String?
    /*
    APNS service info
    */
    open var `pn_apns`: APNSInfo?
    /*
    Event filter URI
    */
    open var `event`: String?
    /*
    Internal identifier of a subscription
    */
    open var `subscriptionId`: String?
    /*
    The datetime of a call action in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    */
    open var `timestamp`: String?
    /*
    Internal identifier of an extension
    */
    open var `extensionId`: String?
    /*
    Calling action, for example 'StartRing'
    */
    open var `action`: String?
    /*
    Identifier of a call session
    */
    open var `sessionId`: String?
    /*
    Identifier of a server
    */
    open var `serverId`: String?
    /*
    Phone number of a caller. For GCM transport type '_from' property should be used
    */
    open var `from`: String?
    /*
    Caller name
    */
    open var `fromName`: String?
    /*
    Phone number of a callee
    */
    open var `to`: String?
    /*
    Callee name
    */
    open var `toName`: String?
    /*
    Unique identifier of a session
    */
    open var `sid`: String?
    /*
    SIP proxy registration name
    */
    open var `toUrl`: String?
    /*
    User data
    */
    open var `srvLvl`: String?
    /*
    User data
    */
    open var `srvLvlExt`: String?
    /*
    File containing recorded caller name
    */
    open var `recUrl`: String?
    /*
    Notification lifetime value in seconds, the default value is 30 seconds
    */
    open var `pn_ttl`: Int?
    /*
    Internal identifier of a subscription owner extension
    */
    open var `ownerId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uuid: String? = nil, pn_apns: APNSInfo? = nil, event: String? = nil, subscriptionId: String? = nil, timestamp: String? = nil, extensionId: String? = nil, action: String? = nil, sessionId: String? = nil, serverId: String? = nil, from: String? = nil, fromName: String? = nil, to: String? = nil, toName: String? = nil, sid: String? = nil, toUrl: String? = nil, srvLvl: String? = nil, srvLvlExt: String? = nil, recUrl: String? = nil, pn_ttl: Int? = nil, ownerId: String? = nil) {
        self.init()
        self.uuid = `uuid`
        self.pn_apns = `pn_apns`
        self.event = `event`
        self.subscriptionId = `subscriptionId`
        self.timestamp = `timestamp`
        self.extensionId = `extensionId`
        self.action = `action`
        self.sessionId = `sessionId`
        self.serverId = `serverId`
        self.from = `from`
        self.fromName = `fromName`
        self.to = `to`
        self.toName = `toName`
        self.sid = `sid`
        self.toUrl = `toUrl`
        self.srvLvl = `srvLvl`
        self.srvLvlExt = `srvLvlExt`
        self.recUrl = `recUrl`
        self.pn_ttl = `pn_ttl`
        self.ownerId = `ownerId`
    }
    open func mapping(map: Map) {
        `uuid` <- map["uuid"]
        `pn_apns` <- map["pn_apns"]
        `event` <- map["event"]
        `subscriptionId` <- map["subscriptionId"]
        `timestamp` <- map["timestamp"]
        `extensionId` <- (map["extensionId"], StringTransform())
        `action` <- map["action"]
        `sessionId` <- map["sessionId"]
        `serverId` <- map["serverId"]
        `from` <- map["from"]
        `fromName` <- map["fromName"]
        `to` <- map["to"]
        `toName` <- map["toName"]
        `sid` <- map["sid"]
        `toUrl` <- map["toUrl"]
        `srvLvl` <- map["srvLvl"]
        `srvLvlExt` <- map["srvLvlExt"]
        `recUrl` <- map["recUrl"]
        `pn_ttl` <- map["pn_ttl"]
        `ownerId` <- map["ownerId"]
    }
}
