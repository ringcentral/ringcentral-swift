import Foundation
import ObjectMapper
import Alamofire
open class ExtensionPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "extension"
        }
    }
    open func `callLog`(_ _id: String? = nil) -> CallLogPath {
        return CallLogPath(parent: self, _id: _id)
    }
    open func `callLogSync`() -> CallLogSyncPath {
        return CallLogSyncPath(parent: self)
    }
    open func `activeCalls`() -> ActiveCallsPath {
        return ActiveCallsPath(parent: self)
    }
    open func `sms`() -> SmsPath {
        return SmsPath(parent: self)
    }
    open func `companyPager`() -> CompanyPagerPath {
        return CompanyPagerPath(parent: self)
    }
    open func `fax`() -> FaxPath {
        return FaxPath(parent: self)
    }
    open func `messageStore`(_ _id: String? = nil) -> MessageStorePath {
        return MessageStorePath(parent: self, _id: _id)
    }
    open func `messageSync`() -> MessageSyncPath {
        return MessageSyncPath(parent: self)
    }
    open func `voicemail`() -> VoicemailPath {
        return VoicemailPath(parent: self)
    }
    open func `ringOut`(_ _id: String? = nil) -> RingOutPath {
        return RingOutPath(parent: self, _id: _id)
    }
    open func `addressBook`() -> AddressBookPath {
        return AddressBookPath(parent: self)
    }
    open func `addressBookSync`() -> AddressBookSyncPath {
        return AddressBookSyncPath(parent: self)
    }
    open func `favorite`() -> FavoritePath {
        return FavoritePath(parent: self)
    }
    open func `presence`() -> PresencePath {
        return PresencePath(parent: self)
    }
    open func `meeting`(_ _id: String? = nil) -> MeetingPath {
        return MeetingPath(parent: self, _id: _id)
    }
    open func `meetingServiceInfo`() -> MeetingServiceInfoPath {
        return MeetingServiceInfoPath(parent: self)
    }
    open func `authzProfile`() -> AuthzProfilePath {
        return AuthzProfilePath(parent: self)
    }
    open func `businessHours`() -> BusinessHoursPath {
        return BusinessHoursPath(parent: self)
    }
    open func `callerBlocking`() -> CallerBlockingPath {
        return CallerBlockingPath(parent: self)
    }
    open func `forwardingNumber`(_ _id: String? = nil) -> ForwardingNumberPath {
        return ForwardingNumberPath(parent: self, _id: _id)
    }
    open func `answeringRule`(_ _id: String? = nil) -> AnsweringRulePath {
        return AnsweringRulePath(parent: self, _id: _id)
    }
    open func `greeting`(_ _id: String? = nil) -> GreetingPath {
        return GreetingPath(parent: self, _id: _id)
    }
    open func `phoneNumber`(_ _id: String? = nil) -> PhoneNumberPath {
        return PhoneNumberPath(parent: self, _id: _id)
    }
    open func `callerId`() -> CallerIdPath {
        return CallerIdPath(parent: self)
    }
    open func `grant`() -> GrantPath {
        return GrantPath(parent: self)
    }
    open func `notificationSettings`() -> NotificationSettingsPath {
        return NotificationSettingsPath(parent: self)
    }
    open func `profileImage`(_ _id: String? = nil) -> ProfileImagePath {
        return ProfileImagePath(parent: self, _id: _id)
    }
    open func `conferencing`() -> ConferencingPath {
        return ConferencingPath(parent: self)
    }
    open func `device`(_ _id: String? = nil) -> DevicePath {
        return DevicePath(parent: self, _id: _id)
    }
    /*
    Returns basic information about a particular extension of an account.
    */
    open func get(callback: @escaping (_ t: GetExtensionInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetExtensionInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Updates user settings.
    */
    open func put(callback: @escaping (_ t: GetExtensionInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: GetExtensionInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Updates user settings.
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: GetExtensionInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: GetExtensionInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Updates user settings.
    */
    open func put(parameters: ExtensionUpdateRequest, callback: @escaping (_ t: GetExtensionInfoResponse?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    Deletes extension(s) by ID(s).
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    Returns the list of extensions created for a particular account. All types of extensions are included in this list.
    */
    open func list(callback: @escaping (_ t: GetExtensionListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: GetExtensionListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the list of extensions created for a particular account. All types of extensions are included in this list.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: GetExtensionListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: GetExtensionListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the list of extensions created for a particular account. All types of extensions are included in this list.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: GetExtensionListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Indicates the page number to retrieve. Only positive number values are allowed
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items)
        */
        open var `perPage`: Int?
        /*
        Extension current state. Multiple values are supported. If 'Unassigned' is specified, then extensions without extensionNumber are returned. If not specified, then all extensions are returned.
        */
        open var `status`: [String]?
        /*
        Extension type. Multiple values are supported
        */
        open var `type`: [String]?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(page: Int? = nil, perPage: Int? = nil, status: [String]? = nil, type: [String]? = nil) {
            self.init()
            self.page = `page`
            self.perPage = `perPage`
            self.status = `status`
            self.type = `type`
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `status` <- map["status"]
            `type` <- map["type"]
        }
    }
    /*
    Creates an extension.
    */
    open func post(callback: @escaping (_ t: ExtensionCreationResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: ExtensionCreationResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Creates an extension.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: ExtensionCreationResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: ExtensionCreationResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Creates an extension.
    */
    open func post(parameters: ExtensionCreationRequest, callback: @escaping (_ t: ExtensionCreationResponse?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
