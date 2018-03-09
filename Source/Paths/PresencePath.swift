import Foundation
import ObjectMapper
import Alamofire
open class PresencePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "presence"
        }
    }
    open func `line`(_ _id: String? = nil) -> LinePath {
        return LinePath(parent: self, _id: _id)
    }
    open func `permission`(_ _id: String? = nil) -> PermissionPath {
        return PermissionPath(parent: self, _id: _id)
    }
    /*
    */
    open func list(callback: @escaping (_ t: AccountPresenceInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: AccountPresenceInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.2</p><p>Returns presence status of an extension or several extensions by their ID(s). Batch request is supported, see Batch Requests for details.The presenceStatus is returned as Offline (the parameters telephonyStatus, message, userStatus and dndStatus are not returned at all) for the following extension types: Department/Announcement Only/Take Messages Only (Voicemail)/Fax User/Paging Only Group/Shared Lines Group/IVR Menu/Application Extension/Park Location.If the user requests his/her own presence status, the response contains actual presence status even if the status publication is turned off.Batch request is supported. For batch requests the number of extensions in one request is limited to 30. If more extensions are included in the request, the error code 400 Bad Request is returned with the logical error code InvalidMultipartRequest and the corresponding message 'Extension Presence Info multipart request is limited to 30 extensions'.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadPresence</td><td>Getting user presence information</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: GetPresenceInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetPresenceInfo?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func put(callback: @escaping (_ t: PresenceInfoResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: PresenceInfoResource?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: PresenceInfoResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: PresenceInfoResource?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func put(parameters: PresenceInfoResource, callback: @escaping (_ t: PresenceInfoResource?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
