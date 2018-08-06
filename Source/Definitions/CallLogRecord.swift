import Foundation
import ObjectMapper
open class CallLogRecord: Mappable {
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
    open var `from`: CallLogCallerInfo?
    /*
    Callee information
    */
    open var `to`: CallLogCallerInfo?
    /*
    Call type
    */
    open var `type`: String?
    /*
    Call direction
    */
    open var `direction`: String?
    /*
    Action description of the call operation
    */
    open var `action`: String?
    /*
    Status description of the call operation
    */
    open var `result`: String?
    /*
    The call start datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    */
    open var `startTime`: String?
    /*
    Call duration in seconds
    */
    open var `duration`: Int?
    /*
    Call recording data. Returned if the call is recorded, the withRecording parameter is set to 'True' in this case
    */
    open var `recording`: RecordingInfo?
    /*
    For 'Detailed' view only. The datetime when the call log record was modified in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    */
    open var `lastModifiedTime`: String?
    /*
    For 'Detailed' view only. Call transport
    */
    open var `transport`: String?
    /*
    Information about extension on whose behalf a call is initiated. For Secretary call log the Boss extension info is returned
    */
    open var `extension`: ActiveCallsRecordExtensionInfo?
    /*
    Information on a delegate extension that actually implemented a call action. For Secretary call log the field is returned if the current extension implemented a call. For Boss call log the field contains information on a Secretary extension which actually implemented a call on behalf of the current extension
    */
    open var `delegate`: DelegateInfo?
    /*
    For 'Detailed' view only. Leg description
    */
    open var `legs`: [CallLogRecordLegInfo]?
    /*
    */
    open var `message`: CallLogRecordMessage?
    /*
    Returned only if this call was deleted. Value is set to 'True' in this case
    */
    open var `deleted`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, sessionId: String? = nil, from: CallLogCallerInfo? = nil, to: CallLogCallerInfo? = nil, type: String? = nil, direction: String? = nil, action: String? = nil, result: String? = nil, startTime: String? = nil, duration: Int? = nil, recording: RecordingInfo? = nil, lastModifiedTime: String? = nil, transport: String? = nil, extension: ActiveCallsRecordExtensionInfo? = nil, delegate: DelegateInfo? = nil, legs: [CallLogRecordLegInfo]? = nil, message: CallLogRecordMessage? = nil, deleted: Bool? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.sessionId = `sessionId`
        self.from = `from`
        self.to = `to`
        self.type = `type`
        self.direction = `direction`
        self.action = `action`
        self.result = `result`
        self.startTime = `startTime`
        self.duration = `duration`
        self.recording = `recording`
        self.lastModifiedTime = `lastModifiedTime`
        self.transport = `transport`
        self.extension = `extension`
        self.delegate = `delegate`
        self.legs = `legs`
        self.message = `message`
        self.deleted = `deleted`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `sessionId` <- map["sessionId"]
        `from` <- map["from"]
        `to` <- map["to"]
        `type` <- map["type"]
        `direction` <- map["direction"]
        `action` <- map["action"]
        `result` <- map["result"]
        `startTime` <- map["startTime"]
        `duration` <- map["duration"]
        `recording` <- map["recording"]
        `lastModifiedTime` <- map["lastModifiedTime"]
        `transport` <- map["transport"]
        `extension` <- map["extension"]
        `delegate` <- map["delegate"]
        `legs` <- map["legs"]
        `message` <- map["message"]
        `deleted` <- map["deleted"]
    }
}
