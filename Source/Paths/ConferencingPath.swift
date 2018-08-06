import Foundation
import ObjectMapper
import Alamofire
open class ConferencingPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "conferencing"
        }
    }
    /*
    Returns the information on the Free Conference Calling (FCC) feature for a given extension.
    */
    open func get(callback: @escaping (_ t: GetConferencingInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetConferencingInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the information on the Free Conference Calling (FCC) feature for a given extension.
    */
    open func get(parameters: Parameters, callback: @escaping (_ t: GetConferencingInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: GetConferencingInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the information on the Free Conference Calling (FCC) feature for a given extension.
    */
    open func get(parameters: GetParameters, callback: @escaping (_ t: GetConferencingInfoResponse?, _ error: HTTPError?) -> Void) {
        get(parameters: parameters.toParameters(), callback: callback)
    }
    open class GetParameters: Mappable {
        /*
        Internal identifier of a country. If not specified, the response is returned for the brand country
        */
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
    /*
    Updates the default conferencing number for the current extension. The number can be selected from conferencing numbers of the current extension. Updates the setting, allowing participants join the conference before host.
    */
    open func put(callback: @escaping (_ t: GetConferencingInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: GetConferencingInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Updates the default conferencing number for the current extension. The number can be selected from conferencing numbers of the current extension. Updates the setting, allowing participants join the conference before host.
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: GetConferencingInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: GetConferencingInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Updates the default conferencing number for the current extension. The number can be selected from conferencing numbers of the current extension. Updates the setting, allowing participants join the conference before host.
    */
    open func put(parameters: UpdateConferencingInfoRequest, callback: @escaping (_ t: GetConferencingInfoResponse?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
