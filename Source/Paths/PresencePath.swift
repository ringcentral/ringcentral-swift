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
    open func `permission`() -> PermissionPath {
        return PermissionPath(parent: self)
    }
    /*
    Returns presence status of an extension or several extensions by their ID(s).
    The presenceStatus is returned as Offline (the parameters telephonyStatus, message, userStatus and dndStatus are not returned at all) for the following extension types: Department/Announcement Only/Take Messages Only (Voicemail)/Fax User/Paging Only Group/Shared Lines Group/IVR Menu/Application Extension/Park Location.
    If the user requests his/her own presence status, the response contains actual presence status even if the status publication is turned off.
    Batch request is supported. For batch requests the number of extensions in one request is limited to 30. If more extensions are included in the request, the error code 400 Bad Request is returned with the logical error code InvalidMultipartRequest and the corresponding message 'Extension Presence Info multipart request is limited to 30 extensions'.
    */
    open func get(callback: @escaping (_ t: PresenceInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: PresenceInfo?, error) in
            callback(t, error)
        }
    }
}
