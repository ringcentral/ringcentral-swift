import Foundation
import ObjectMapper
import Alamofire
open class PresencePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "presence"
        }
    }
    open func `meetings`() -> MeetingsPath {
        return MeetingsPath(parent: self)
    }
    /*
    Returns presence status of an extension or several extensions by their ID(s). Batch request is supported. The 'presenceStatus' is returned as Offline (the parameters 'telephonyStatus', 'message', 'userStatus' and 'dndStatus' are not returned at all) for the following extension types: Department/Announcement Only/Take Messages Only (Voicemail)/Fax User/Paging Only Group/Shared Lines Group/IVR Menu/Application Extension/Park Location.If the user requests his/her own presence status, the response contains actual presence status even if the status publication is turned off. Batch request is supported. For batch requests the number of extensions in one request is limited to 30. If more extensions are included in the request, the error code 400 Bad Request is returned with the logical error code InvalidMultipartRequest and the corresponding message 'Extension Presence Info multipart request is limited to 30 extensions'.
    */
    open func get(callback: @escaping (_ t: GetPresenceInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetPresenceInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Returns presence status of an extension or several extensions by their ID(s). Batch request is supported. The 'presenceStatus' is returned as Offline (the parameters 'telephonyStatus', 'message', 'userStatus' and 'dndStatus' are not returned at all) for the following extension types: Department/Announcement Only/Take Messages Only (Voicemail)/Fax User/Paging Only Group/Shared Lines Group/IVR Menu/Application Extension/Park Location.If the user requests his/her own presence status, the response contains actual presence status even if the status publication is turned off. Batch request is supported. For batch requests the number of extensions in one request is limited to 30. If more extensions are included in the request, the error code 400 Bad Request is returned with the logical error code InvalidMultipartRequest and the corresponding message 'Extension Presence Info multipart request is limited to 30 extensions'.
    */
    open func get(parameters: Parameters, callback: @escaping (_ t: GetPresenceInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: GetPresenceInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Returns presence status of an extension or several extensions by their ID(s). Batch request is supported. The 'presenceStatus' is returned as Offline (the parameters 'telephonyStatus', 'message', 'userStatus' and 'dndStatus' are not returned at all) for the following extension types: Department/Announcement Only/Take Messages Only (Voicemail)/Fax User/Paging Only Group/Shared Lines Group/IVR Menu/Application Extension/Park Location.If the user requests his/her own presence status, the response contains actual presence status even if the status publication is turned off. Batch request is supported. For batch requests the number of extensions in one request is limited to 30. If more extensions are included in the request, the error code 400 Bad Request is returned with the logical error code InvalidMultipartRequest and the corresponding message 'Extension Presence Info multipart request is limited to 30 extensions'.
    */
    open func get(parameters: GetParameters, callback: @escaping (_ t: GetPresenceInfo?, _ error: HTTPError?) -> Void) {
        get(parameters: parameters.toParameters(), callback: callback)
    }
    open class GetParameters: Mappable {
        /*
        Whether to return detailed telephony state
        */
        open var `detailedTelephonyState`: Bool?
        /*
        Whether to return SIP data
        */
        open var `sipData`: Bool?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(detailedTelephonyState: Bool? = nil, sipData: Bool? = nil) {
            self.init()
            self.detailedTelephonyState = `detailedTelephonyState`
            self.sipData = `sipData`
        }
        open func mapping(map: Map) {
            `detailedTelephonyState` <- map["detailedTelephonyState"]
            `sipData` <- map["sipData"]
        }
    }
    /*
    Updates user-defined extension presence status, status message and DnD status by extension ID. Supported for regular User extensions only. The extension types listed do not support presence status: Department, Announcement Only, Take Messages Only (Voicemail), Fax User, Paging Only Group, Shared Lines Group, IVR Menu, Application Extension.
    */
    open func put(callback: @escaping (_ t: PresenceInfoResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: PresenceInfoResource?, error) in
            callback(t, error)
        }
    }
    /*
    Updates user-defined extension presence status, status message and DnD status by extension ID. Supported for regular User extensions only. The extension types listed do not support presence status: Department, Announcement Only, Take Messages Only (Voicemail), Fax User, Paging Only Group, Shared Lines Group, IVR Menu, Application Extension.
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: PresenceInfoResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: PresenceInfoResource?, error) in
            callback(t, error)
        }
    }
    /*
    Updates user-defined extension presence status, status message and DnD status by extension ID. Supported for regular User extensions only. The extension types listed do not support presence status: Department, Announcement Only, Take Messages Only (Voicemail), Fax User, Paging Only Group, Shared Lines Group, IVR Menu, Application Extension.
    */
    open func put(parameters: PresenceInfoResource, callback: @escaping (_ t: PresenceInfoResource?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    Returns presence status of all extensions of an account. Please note: The presenceStatus is returned as Offline (the parameters telephonyStatus, message, userStatus and dndStatus are not returned at all) for the following extension types: Department, Announcement Only, Voicemail (Take Messages Only), Fax User, Paging Only Group, Shared Lines Group, IVR Menu, Application Extension.
    */
    open func list(callback: @escaping (_ t: AccountPresenceInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: AccountPresenceInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Returns presence status of all extensions of an account. Please note: The presenceStatus is returned as Offline (the parameters telephonyStatus, message, userStatus and dndStatus are not returned at all) for the following extension types: Department, Announcement Only, Voicemail (Take Messages Only), Fax User, Paging Only Group, Shared Lines Group, IVR Menu, Application Extension.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: AccountPresenceInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: AccountPresenceInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Returns presence status of all extensions of an account. Please note: The presenceStatus is returned as Offline (the parameters telephonyStatus, message, userStatus and dndStatus are not returned at all) for the following extension types: Department, Announcement Only, Voicemail (Take Messages Only), Fax User, Paging Only Group, Shared Lines Group, IVR Menu, Application Extension.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: AccountPresenceInfo?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Whether to return detailed telephony state
        */
        open var `detailedTelephonyState`: Bool?
        /*
        Whether to return SIP data
        */
        open var `sipData`: Bool?
        /*
        Page number for accoount presence information
        */
        open var `page`: Int?
        /*
        Number for accoount presence information items per page
        */
        open var `perPage`: Int?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(detailedTelephonyState: Bool? = nil, sipData: Bool? = nil, page: Int? = nil, perPage: Int? = nil) {
            self.init()
            self.detailedTelephonyState = `detailedTelephonyState`
            self.sipData = `sipData`
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `detailedTelephonyState` <- map["detailedTelephonyState"]
            `sipData` <- map["sipData"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
}
