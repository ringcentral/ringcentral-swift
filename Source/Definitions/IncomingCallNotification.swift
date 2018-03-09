import Foundation
import ObjectMapper
open class IncomingCallNotification: Mappable {
    /*
    Event filter URI
    */
    open var `event`: String?
    /*
    Universally unique identifier of a notification
    */
    open var `uuid`: String?
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
    Phone number of a caller
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
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(event: String? = nil, uuid: String? = nil, subscriptionId: String? = nil, timestamp: String? = nil, extensionId: String? = nil, action: String? = nil, sessionId: String? = nil, serverId: String? = nil, from: String? = nil, fromName: String? = nil, to: String? = nil, toName: String? = nil, sid: String? = nil, toUrl: String? = nil, srvLvl: String? = nil, srvLvlExt: String? = nil, recUrl: String? = nil) {
        self.init()
        self.event = `event`
        self.uuid = `uuid`
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
    }
    open func mapping(map: Map) {
        `event` <- map["event"]
        `uuid` <- map["uuid"]
        `subscriptionId` <- map["subscriptionId"]
        `timestamp` <- map["timestamp"]
        `extensionId` <- map["extensionId"]
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
    }
}
