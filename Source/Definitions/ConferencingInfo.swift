import Foundation
import ObjectMapper
import Alamofire
open class ConferencingInfo: Mappable {
    // Canonical URI of a conferencing
    open var `uri`: String?
    // Determines if host user allows conference participants to join before the host
    open var `allowJoinBeforeHost`: Bool?
    // Access code for a host user
    open var `hostCode`: String?
    // Internal parameter specifying conferencing engine
    open var `mode`: String?
    // Access code for any participant
    open var `participantCode`: String?
    // Primary conference phone number for user's home country returned in E.164 (11-digits) format
    open var `phoneNumber`: String?
    // Short URL leading to the service web page Tap to Join for audio conference bridge
    open var `tapToJoinUri`: String?
    // List of multiple dial-in phone numbers to connect to audio conference service, relevant for user's brand. Each number is given with the country and location information, in order to let the user choose the less expensive way to connect to a conference. The first number in the list is the primary conference number, that is default and domestic
    open var `phoneNumbers`: [ConferencingInfo_PhoneNumberInfo]?
    public init() {
    }
    convenience public init(uri: String? = nil, allowJoinBeforeHost: Bool? = nil, hostCode: String? = nil, mode: String? = nil, participantCode: String? = nil, phoneNumber: String? = nil, tapToJoinUri: String? = nil, phoneNumbers: [ConferencingInfo_PhoneNumberInfo]? = nil) {
        self.init()
        self.uri = `uri`
        self.allowJoinBeforeHost = `allowJoinBeforeHost`
        self.hostCode = `hostCode`
        self.mode = `mode`
        self.participantCode = `participantCode`
        self.phoneNumber = `phoneNumber`
        self.tapToJoinUri = `tapToJoinUri`
        self.phoneNumbers = `phoneNumbers`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `allowJoinBeforeHost` <- map["allowJoinBeforeHost"]
        `hostCode` <- map["hostCode"]
        `mode` <- map["mode"]
        `participantCode` <- map["participantCode"]
        `phoneNumber` <- map["phoneNumber"]
        `tapToJoinUri` <- map["tapToJoinUri"]
        `phoneNumbers` <- map["phoneNumbers"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
