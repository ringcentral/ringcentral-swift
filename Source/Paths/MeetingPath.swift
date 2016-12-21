import Foundation
import ObjectMapper
import Alamofire
open class MeetingPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "meeting"
        }
    }
    open func `end`() -> EndPath {
        return EndPath(parent: self)
    }
    // Create Meeting
    open func post(callback: @escaping (_ t: MeetingInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: MeetingInfo?, error) in
            callback(t, error)
        }
    }
    // Create Meeting
    open func post(parameters: Parameters, callback: @escaping (_ t: MeetingInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: MeetingInfo?, error) in
            callback(t, error)
        }
    }
    // Create Meeting
    open func post(parameters: PostParameters, callback: @escaping (_ t: MeetingInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        // Topic of a meeting
        open var `topic`: String?
        // Type of a meeting. 'Instant' - meeting that is instantly started as soon as the host creates it; 'Scheduled' - common scheduled meeting; 'Recurring' - a recurring meeting. If the specified meeting type is 'Scheduled' then schedule property is mandatory for request
        open var `meetingType`: String?
        // Password required to join a meeting. Max number of characters is 10
        open var `password`: String?
        // Schedule of a meeting
        open var `schedule`: MeetingScheduleInfo?
        // If 'True' then the meeting can be joined and started by any participant (not host only). Supported for the meetings of 'Scheduled' and 'Recurring' type.
        open var `allowJoinBeforeHost`: Bool?
        // Enables starting video when host joins the meeting
        open var `startHostVideo`: Bool?
        // Enables starting video when participants join the meeting
        open var `startParticipantsVideo`: Bool?
        // Meeting audio options. Possible values are 'Phone', 'ComputerAudio'
        open var `audioOptions`: [String]?
        public init() {
        }
        convenience public init(topic: String? = nil, meetingType: String? = nil, password: String? = nil, schedule: MeetingScheduleInfo? = nil, allowJoinBeforeHost: Bool? = nil, startHostVideo: Bool? = nil, startParticipantsVideo: Bool? = nil, audioOptions: [String]? = nil) {
            self.init()
            self.topic = `topic`
            self.meetingType = `meetingType`
            self.password = `password`
            self.schedule = `schedule`
            self.allowJoinBeforeHost = `allowJoinBeforeHost`
            self.startHostVideo = `startHostVideo`
            self.startParticipantsVideo = `startParticipantsVideo`
            self.audioOptions = `audioOptions`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `topic` <- map["topic"]
            `meetingType` <- map["meetingType"]
            `password` <- map["password"]
            `schedule` <- map["schedule"]
            `allowJoinBeforeHost` <- map["allowJoinBeforeHost"]
            `startHostVideo` <- map["startHostVideo"]
            `startParticipantsVideo` <- map["startParticipantsVideo"]
            `audioOptions` <- map["audioOptions"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
    // Get Meetings List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // Canonical URI of meetings resource
        open var `uri`: String?
        // List of extension meetings
        open var `records`: [MeetingInfo]?
        // Information on paging
        open var `paging`: PagingInfo?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        public init() {
        }
        convenience public init(uri: String? = nil, records: [MeetingInfo]? = nil, paging: PagingInfo? = nil, navigation: NavigationInfo? = nil) {
            self.init()
            self.uri = `uri`
            self.records = `records`
            self.paging = `paging`
            self.navigation = `navigation`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `records` <- map["records"]
            `paging` <- map["paging"]
            `navigation` <- map["navigation"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
    // Delete Meeting
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Get Meeting
    open func get(callback: @escaping (_ t: MeetingInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: MeetingInfo?, error) in
            callback(t, error)
        }
    }
    // Update Meeting
    open func put(callback: @escaping (_ t: MeetingInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: MeetingInfo?, error) in
            callback(t, error)
        }
    }
    // Update Meeting
    open func put(parameters: Parameters, callback: @escaping (_ t: MeetingInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: MeetingInfo?, error) in
            callback(t, error)
        }
    }
    // Update Meeting
    open func put(parameters: PutParameters, callback: @escaping (_ t: MeetingInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    open class PutParameters: Mappable {
        // Topic of a meeting
        open var `topic`: String?
        // Type of a meeting. 'Instant' - meeting that is instantly started as soon as the host creates it; 'Scheduled' - common scheduled meeting; 'Recurring' - a recurring meeting. If the specified meeting type is 'Scheduled' then schedule property is mandatory for request
        open var `meetingType`: String?
        // Password required to join a meeting. Max number of characters is 10
        open var `password`: String?
        // Schedule of a meeting
        open var `schedule`: MeetingScheduleInfo?
        // If 'True' then the meeting can be joined and started by any participant (not host only). Supported for the meetings of 'Scheduled' and 'Recurring' type.
        open var `allowJoinBeforeHost`: Bool?
        // Enables starting video when host joins the meeting
        open var `startHostVideo`: Bool?
        // Enables starting video when participants join the meeting
        open var `startParticipantsVideo`: Bool?
        // Meeting audio options. Possible values are 'Phone', 'ComputerAudio'
        open var `audioOptions`: [String]?
        public init() {
        }
        convenience public init(topic: String? = nil, meetingType: String? = nil, password: String? = nil, schedule: MeetingScheduleInfo? = nil, allowJoinBeforeHost: Bool? = nil, startHostVideo: Bool? = nil, startParticipantsVideo: Bool? = nil, audioOptions: [String]? = nil) {
            self.init()
            self.topic = `topic`
            self.meetingType = `meetingType`
            self.password = `password`
            self.schedule = `schedule`
            self.allowJoinBeforeHost = `allowJoinBeforeHost`
            self.startHostVideo = `startHostVideo`
            self.startParticipantsVideo = `startParticipantsVideo`
            self.audioOptions = `audioOptions`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `topic` <- map["topic"]
            `meetingType` <- map["meetingType"]
            `password` <- map["password"]
            `schedule` <- map["schedule"]
            `allowJoinBeforeHost` <- map["allowJoinBeforeHost"]
            `startHostVideo` <- map["startHostVideo"]
            `startParticipantsVideo` <- map["startParticipantsVideo"]
            `audioOptions` <- map["audioOptions"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
}
