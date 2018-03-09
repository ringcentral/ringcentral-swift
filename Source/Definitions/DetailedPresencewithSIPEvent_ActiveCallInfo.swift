import Foundation
import ObjectMapper
open class DetailedPresencewithSIPEvent_ActiveCallInfo: Mappable {
    /*
    Internal identifier of a call
    */
    open var `id`: String?
    /*
    Call direction
    */
    open var `direction`: String?
    /*
    Phone number or extension number of a caller
    */
    open var `from`: String?
    /*
    Phone number or extension number of a callee
    */
    open var `to`: String?
    /*
    Telephony call status. See Telephony Status Values for detailed status description
    */
    open var `telephonyStatus`: String?
    /*
    Internal identifier of a call session
    */
    open var `sessionId`: String?
    /*
    SIP connection settings
    */
    open var `sipData`: SIPData?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, direction: String? = nil, from: String? = nil, to: String? = nil, telephonyStatus: String? = nil, sessionId: String? = nil, sipData: SIPData? = nil) {
        self.init()
        self.id = `id`
        self.direction = `direction`
        self.from = `from`
        self.to = `to`
        self.telephonyStatus = `telephonyStatus`
        self.sessionId = `sessionId`
        self.sipData = `sipData`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `direction` <- map["direction"]
        `from` <- map["from"]
        `to` <- map["to"]
        `telephonyStatus` <- map["telephonyStatus"]
        `sessionId` <- map["sessionId"]
        `sipData` <- map["sipData"]
    }
}
