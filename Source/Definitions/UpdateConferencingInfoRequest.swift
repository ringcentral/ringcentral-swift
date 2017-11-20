import Foundation
import ObjectMapper
open class UpdateConferencingInfoRequest: Mappable {
    /*
    Multiple dial-in phone numbers to connect to audio conference service, relevant for user's brand. Each number is given with the country and location information, in order to let the user choose the less expensive way to connect to a conference. The first number in the list is the primary conference number, that is default and domestic
    */
    open var `phoneNumbers`: [ConferencePhoneNumberInfo]?
    /*
    Determines if host user allows conference participants to join before the host
    */
    open var `allowJoinBeforeHost`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(phoneNumbers: [ConferencePhoneNumberInfo]? = nil, allowJoinBeforeHost: Bool? = nil) {
        self.init()
        self.phoneNumbers = `phoneNumbers`
        self.allowJoinBeforeHost = `allowJoinBeforeHost`
    }
    open func mapping(map: Map) {
        `phoneNumbers` <- map["phoneNumbers"]
        `allowJoinBeforeHost` <- map["allowJoinBeforeHost"]
    }
}
