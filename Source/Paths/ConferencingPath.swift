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
    <p style='font-style:italic;'>Since 1.0.4 (Release 5.13)</p><p>Returns the information on the Free Conference Calling (FCC) feature for a given extension.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: GetConferencingInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetConferencingInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.4 (Release 5.13)</p><p>Returns the information on the Free Conference Calling (FCC) feature for a given extension.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(parameters: Parameters, callback: @escaping (_ t: GetConferencingInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: GetConferencingInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.4 (Release 5.13)</p><p>Returns the information on the Free Conference Calling (FCC) feature for a given extension.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
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
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func put(callback: @escaping (_ t: GetConferencingInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: GetConferencingInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: GetConferencingInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: GetConferencingInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>EditExtensions</td><td>Viewing and updating my extension info (includes extension name, number, email and phone number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func put(parameters: UpdateConferencingInfoRequest, callback: @escaping (_ t: GetConferencingInfoResponse?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
