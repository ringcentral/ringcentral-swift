import Foundation
import ObjectMapper
open class CallLogRecordResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `sessionId`: String?
    /*
    */
    open var `startTime`: String?
    /*
    */
    open var `duration`: Int?
    /*
    */
    open var `type`: String?
    /*
    */
    open var `direction`: String?
    /*
    */
    open var `action`: String?
    /*
    */
    open var `result`: String?
    /*
    */
    open var `to`: CallerInfo?
    /*
    */
    open var `from`: CallerInfo?
    /*
    */
    open var `recording`: CallLogRecordingResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, sessionId: String? = nil, startTime: String? = nil, duration: Int? = nil, type: String? = nil, direction: String? = nil, action: String? = nil, result: String? = nil, to: CallerInfo? = nil, from: CallerInfo? = nil, recording: CallLogRecordingResource? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.sessionId = `sessionId`
        self.startTime = `startTime`
        self.duration = `duration`
        self.type = `type`
        self.direction = `direction`
        self.action = `action`
        self.result = `result`
        self.to = `to`
        self.from = `from`
        self.recording = `recording`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `sessionId` <- map["sessionId"]
        `startTime` <- map["startTime"]
        `duration` <- map["duration"]
        `type` <- map["type"]
        `direction` <- map["direction"]
        `action` <- map["action"]
        `result` <- map["result"]
        `to` <- map["to"]
        `from` <- map["from"]
        `recording` <- map["recording"]
    }
}
