import Foundation
import ObjectMapper
import Alamofire
open class ConferencingPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "conferencing"
        }
    }
    // Get Conferencing info
    open func get(callback: @escaping (_ t: ConferencingInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ConferencingInfo?, error) in
            callback(t, error)
        }
    }
    // Get Conferencing info
    open func get(parameters: Parameters, callback: @escaping (_ t: ConferencingInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: ConferencingInfo?, error) in
            callback(t, error)
        }
    }
    // Get Conferencing info
    open func get(parameters: GetParameters, callback: @escaping (_ t: ConferencingInfo?, _ error: HTTPError?) -> Void) {
        get(parameters: parameters.toParameters(), callback: callback)
    }
    open class GetParameters: Mappable {
        // Internal identifier of a country. If not specified, the response is returned for the brand country
        open var `countryId`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(countryId: String? = nil) {
            self.init()
            self.countryId = `countryId`
        }
        open func mapping(map: Map) {
            `countryId` <- map["countryId"]
        }
    }
    // Update Conferencing info
    open func put(callback: @escaping (_ t: ConferencingInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: ConferencingInfo?, error) in
            callback(t, error)
        }
    }
    // Update Conferencing info
    open func put(parameters: Parameters, callback: @escaping (_ t: ConferencingInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: ConferencingInfo?, error) in
            callback(t, error)
        }
    }
    // Update Conferencing info
    open func put(parameters: PutParameters, callback: @escaping (_ t: ConferencingInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    open class PutParameters: Mappable {
        // Multiple dial-in phone numbers to connect to audio conference service, relevant for user's brand. Each number is given with the country and location information, in order to let the user choose the less expensive way to connect to a conference. The first number in the list is the primary conference number, that is default and domestic
        open var `phoneNumbers`: [Conferencing_Request_PhoneNumber]?
        // Determines if host user allows conference participants to join before the host
        open var `allowJoinBeforeHost`: Bool?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(phoneNumbers: [Conferencing_Request_PhoneNumber]? = nil, allowJoinBeforeHost: Bool? = nil) {
            self.init()
            self.phoneNumbers = `phoneNumbers`
            self.allowJoinBeforeHost = `allowJoinBeforeHost`
        }
        open func mapping(map: Map) {
            `phoneNumbers` <- map["phoneNumbers"]
            `allowJoinBeforeHost` <- map["allowJoinBeforeHost"]
        }
    }
}
