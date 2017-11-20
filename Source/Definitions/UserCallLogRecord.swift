import Foundation
import ObjectMapper
open class UserCallLogRecord: Mappable {
    /*
    Internal identifier of a cal log record
    */
    open var `id`: String?
    /*
    Canonical URI of a call log record
    */
    open var `uri`: String?
    /*
    Internal identifier of a call session
    */
    open var `sessionId`: String?
    /*
    Caller information
    */
    open var `from`: String?
    /*
    Callee information
    */
    open var `to`: String?
    /*
    Call type = ['Voice', 'Fax']
    */
    open var `type`: String?
    /*
    Call direction = ['Inbound', 'Outbound']
    */
    open var `direction`: String?
    /*
    The call start datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    */
    open var `startTime`: String?
    /*
    Call duration in seconds
    */
    open var `duration`: Int?
    /*
    Call recording data. Returned if the call is recorded. Each call recording is stored in the system for 90 days. But if the number of recordings exceeds the admissible limit (100,000 recordings per account) then the older recordings are replaced with the new ones. Thus a link to an older recording in a certain call log record becomes unavailable
    */
    open var `recording`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, sessionId: String? = nil, from: String? = nil, to: String? = nil, type: String? = nil, direction: String? = nil, startTime: String? = nil, duration: Int? = nil, recording: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.sessionId = `sessionId`
        self.from = `from`
        self.to = `to`
        self.type = `type`
        self.direction = `direction`
        self.startTime = `startTime`
        self.duration = `duration`
        self.recording = `recording`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `sessionId` <- map["sessionId"]
        `from` <- map["from"]
        `to` <- map["to"]
        `type` <- map["type"]
        `direction` <- map["direction"]
        `startTime` <- map["startTime"]
        `duration` <- map["duration"]
        `recording` <- map["recording"]
    }
}
