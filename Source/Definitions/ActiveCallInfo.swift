import Foundation
import ObjectMapper
open class ActiveCallInfo: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `direction`: String?
    /*
    */
    open var `from`: String?
    /*
    */
    open var `to`: String?
    /*
    */
    open var `telephonyStatus`: String?
    /*
    */
    open var `sipData`: DetailedCallInfo?
    /*
    */
    open var `sessionId`: String?
    /*
    */
    open var `terminationType`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, direction: String? = nil, from: String? = nil, to: String? = nil, telephonyStatus: String? = nil, sipData: DetailedCallInfo? = nil, sessionId: String? = nil, terminationType: String? = nil) {
        self.init()
        self.id = `id`
        self.direction = `direction`
        self.from = `from`
        self.to = `to`
        self.telephonyStatus = `telephonyStatus`
        self.sipData = `sipData`
        self.sessionId = `sessionId`
        self.terminationType = `terminationType`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `direction` <- map["direction"]
        `from` <- map["from"]
        `to` <- map["to"]
        `telephonyStatus` <- map["telephonyStatus"]
        `sipData` <- map["sipData"]
        `sessionId` <- map["sessionId"]
        `terminationType` <- map["terminationType"]
    }
}
