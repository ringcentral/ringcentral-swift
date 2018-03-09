import Foundation
import ObjectMapper
open class MeetingInfo: Mappable {
    /*
    Canonical URI of a meeting resource
    */
    open var `uri`: String?
    /*
    Internal identifier of a meeting as retrieved from Zoom
    */
    open var `id`: String?
    /*
    Topic of a meeting
    */
    open var `topic`: String?
    /*
    Type of a meeting
    */
    open var `meetingType`: String?
    /*
    Password required to join a meeting
    */
    open var `password`: String?
    /*
    Current status of a meeting
    */
    open var `status`: String?
    /*
    Links to start/join the meeting
    */
    open var `links`: LinksInfo?
    /*
    Schedule of a meeting
    */
    open var `schedule`: MeetingScheduleInfo?
    /*
    If 'True' then the meeting can be joined and started by any participant (not host only). Supported for the meetings of 'Scheduled' and 'Recurring' type.
    */
    open var `allowJoinBeforeHost`: Bool?
    /*
    Enables starting video when host joins the meeting
    */
    open var `startHostVideo`: Bool?
    /*
    Enables starting video when participants join the meeting
    */
    open var `startParticipantsVideo`: Bool?
    /*
    Meeting audio options. Possible values are 'Phone', 'ComputerAudio'
    */
    open var `audioOptions`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, topic: String? = nil, meetingType: String? = nil, password: String? = nil, status: String? = nil, links: LinksInfo? = nil, schedule: MeetingScheduleInfo? = nil, allowJoinBeforeHost: Bool? = nil, startHostVideo: Bool? = nil, startParticipantsVideo: Bool? = nil, audioOptions: [String]? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.topic = `topic`
        self.meetingType = `meetingType`
        self.password = `password`
        self.status = `status`
        self.links = `links`
        self.schedule = `schedule`
        self.allowJoinBeforeHost = `allowJoinBeforeHost`
        self.startHostVideo = `startHostVideo`
        self.startParticipantsVideo = `startParticipantsVideo`
        self.audioOptions = `audioOptions`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `topic` <- map["topic"]
        `meetingType` <- map["meetingType"]
        `password` <- map["password"]
        `status` <- map["status"]
        `links` <- map["links"]
        `schedule` <- map["schedule"]
        `allowJoinBeforeHost` <- map["allowJoinBeforeHost"]
        `startHostVideo` <- map["startHostVideo"]
        `startParticipantsVideo` <- map["startParticipantsVideo"]
        `audioOptions` <- map["audioOptions"]
    }
}
