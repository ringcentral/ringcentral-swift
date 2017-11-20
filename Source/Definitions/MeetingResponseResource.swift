import Foundation
import ObjectMapper
open class MeetingResponseResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `uuid`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `topic`: String?
    /*
    */
    open var `meetingType`: String?
    /*
    */
    open var `password`: String?
    /*
    */
    open var `status`: String?
    /*
    */
    open var `links`: MeetingLinks?
    /*
    */
    open var `schedule`: MeetingScheduleResource?
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
    convenience public init(uri: String? = nil, uuid: String? = nil, id: String? = nil, topic: String? = nil, meetingType: String? = nil, password: String? = nil, status: String? = nil, links: MeetingLinks? = nil, schedule: MeetingScheduleResource? = nil, allowJoinBeforeHost: Bool? = nil, startHostVideo: Bool? = nil, startParticipantsVideo: Bool? = nil, audioOptions: [String]? = nil) {
        self.init()
        self.uri = `uri`
        self.uuid = `uuid`
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
        `uuid` <- map["uuid"]
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
