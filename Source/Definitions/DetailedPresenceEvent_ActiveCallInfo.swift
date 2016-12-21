import Foundation
import ObjectMapper
import Alamofire
open class DetailedPresenceEvent_ActiveCallInfo: Mappable {
    // Internal identifier of a call
    open var `id`: String?
    // Call direction
    open var `direction`: String?
    // Phone number or extension number of a caller
    open var `from`: String?
    // Phone number or extension number of a callee
    open var `to`: String?
    // Telephony call status. See Telephony Status Values for detailed status description
    open var `telephonyStatus`: String?
    // Internal identifier of a call session
    open var `sessionId`: String?
    // Type of call termination. Supported for calls in 'NoCall' status. If the returned termination type is 'Intermediate' it means the call is not actually ended, the connection is established on one of the devices
    open var `terminationType`: String?
    public init() {
    }
    convenience public init(id: String? = nil, direction: String? = nil, from: String? = nil, to: String? = nil, telephonyStatus: String? = nil, sessionId: String? = nil, terminationType: String? = nil) {
        self.init()
        self.id = `id`
        self.direction = `direction`
        self.from = `from`
        self.to = `to`
        self.telephonyStatus = `telephonyStatus`
        self.sessionId = `sessionId`
        self.terminationType = `terminationType`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `direction` <- map["direction"]
        `from` <- map["from"]
        `to` <- map["to"]
        `telephonyStatus` <- map["telephonyStatus"]
        `sessionId` <- map["sessionId"]
        `terminationType` <- map["terminationType"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
