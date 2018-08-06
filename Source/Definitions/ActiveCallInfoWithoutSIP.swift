import Foundation
import ObjectMapper
open class ActiveCallInfoWithoutSIP: Mappable {
    /*
    Internal identifier of a call
    */
    open var `id`: String?
    /*
    Call direction
    */
    open var `direction`: String?
    /*
    Phone number or extension number of a caller. For GCM transport type '_from' property should be used
    */
    open var `from`: String?
    /*
    Name of a caller
    */
    open var `fromName`: String?
    /*
    Phone number or extension number of a callee
    */
    open var `to`: String?
    /*
    Name of a callee
    */
    open var `toName`: String?
    /*
    Time when the call is actually started
    */
    open var `startTime`: String?
    /*
    Telephony call status
    */
    open var `telephonyStatus`: String?
    /*
    Internal identifier of a call session
    */
    open var `sessionId`: String?
    /*
    Type of call termination. Supported for calls in 'NoCall' status. If the returned termination type is 'intermediate' it means the call is not actually ended, the connection is established on one of the devices
    */
    open var `terminationType`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, direction: String? = nil, from: String? = nil, fromName: String? = nil, to: String? = nil, toName: String? = nil, startTime: String? = nil, telephonyStatus: String? = nil, sessionId: String? = nil, terminationType: String? = nil) {
        self.init()
        self.id = `id`
        self.direction = `direction`
        self.from = `from`
        self.fromName = `fromName`
        self.to = `to`
        self.toName = `toName`
        self.startTime = `startTime`
        self.telephonyStatus = `telephonyStatus`
        self.sessionId = `sessionId`
        self.terminationType = `terminationType`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `direction` <- map["direction"]
        `from` <- map["from"]
        `fromName` <- map["fromName"]
        `to` <- map["to"]
        `toName` <- map["toName"]
        `startTime` <- map["startTime"]
        `telephonyStatus` <- map["telephonyStatus"]
        `sessionId` <- map["sessionId"]
        `terminationType` <- map["terminationType"]
    }
}
