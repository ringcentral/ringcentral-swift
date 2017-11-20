import Foundation
import ObjectMapper
open class MeetingRequestResource: Mappable {
    /*
    */
    open var `topic`: String?
    /*
    */
    open var `meetingType`: String?
    /*
    */
    open var `schedule`: MeetingScheduleResource?
    /*
    */
    open var `password`: String?
    /*
    */
    open var `host`: HostInfoRequest?
    /*
    */
    open var `allowJoinBeforeHost`: Bool?
    /*
    */
    open var `startHostVideo`: Bool?
    /*
    */
    open var `startParticipantsVideo`: Bool?
    /*
    */
    open var `audioOptions`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(topic: String? = nil, meetingType: String? = nil, schedule: MeetingScheduleResource? = nil, password: String? = nil, host: HostInfoRequest? = nil, allowJoinBeforeHost: Bool? = nil, startHostVideo: Bool? = nil, startParticipantsVideo: Bool? = nil, audioOptions: [String]? = nil) {
        self.init()
        self.topic = `topic`
        self.meetingType = `meetingType`
        self.schedule = `schedule`
        self.password = `password`
        self.host = `host`
        self.allowJoinBeforeHost = `allowJoinBeforeHost`
        self.startHostVideo = `startHostVideo`
        self.startParticipantsVideo = `startParticipantsVideo`
        self.audioOptions = `audioOptions`
    }
    open func mapping(map: Map) {
        `topic` <- map["topic"]
        `meetingType` <- map["meetingType"]
        `schedule` <- map["schedule"]
        `password` <- map["password"]
        `host` <- map["host"]
        `allowJoinBeforeHost` <- map["allowJoinBeforeHost"]
        `startHostVideo` <- map["startHostVideo"]
        `startParticipantsVideo` <- map["startParticipantsVideo"]
        `audioOptions` <- map["audioOptions"]
    }
}
