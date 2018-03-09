import Foundation
import ObjectMapper
open class ConferencingInfoResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `phoneNumber`: String?
    /*
    */
    open var `hostCode`: String?
    /*
    */
    open var `participantCode`: String?
    /*
    */
    open var `allowJoinBeforeHost`: Bool?
    /*
    */
    open var `tapToJoinUri`: String?
    /*
    */
    open var `supportUri`: String?
    /*
    */
    open var `mode`: String?
    /*
    */
    open var `phoneNumbers`: [ConferencingNumberResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, phoneNumber: String? = nil, hostCode: String? = nil, participantCode: String? = nil, allowJoinBeforeHost: Bool? = nil, tapToJoinUri: String? = nil, supportUri: String? = nil, mode: String? = nil, phoneNumbers: [ConferencingNumberResource]? = nil) {
        self.init()
        self.uri = `uri`
        self.phoneNumber = `phoneNumber`
        self.hostCode = `hostCode`
        self.participantCode = `participantCode`
        self.allowJoinBeforeHost = `allowJoinBeforeHost`
        self.tapToJoinUri = `tapToJoinUri`
        self.supportUri = `supportUri`
        self.mode = `mode`
        self.phoneNumbers = `phoneNumbers`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `phoneNumber` <- map["phoneNumber"]
        `hostCode` <- map["hostCode"]
        `participantCode` <- map["participantCode"]
        `allowJoinBeforeHost` <- map["allowJoinBeforeHost"]
        `tapToJoinUri` <- map["tapToJoinUri"]
        `supportUri` <- map["supportUri"]
        `mode` <- map["mode"]
        `phoneNumbers` <- map["phoneNumbers"]
    }
}
