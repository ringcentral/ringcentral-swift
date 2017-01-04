import Foundation
import ObjectMapper
import Alamofire
open class ExtensionPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "extension"
        }
    }
    open func `activeCalls`() -> ActiveCallsPath {
        return ActiveCallsPath(parent: self)
    }
    open func `addressBookSync`() -> AddressBookSyncPath {
        return AddressBookSyncPath(parent: self)
    }
    open func `addressBook`() -> AddressBookPath {
        return AddressBookPath(parent: self)
    }
    open func `answeringRule`(_ _id: String? = nil) -> AnsweringRulePath {
        return AnsweringRulePath(parent: self, _id: _id)
    }
    open func `authzProfile`() -> AuthzProfilePath {
        return AuthzProfilePath(parent: self)
    }
    open func `blockedNumber`(_ _id: String? = nil) -> BlockedNumberPath {
        return BlockedNumberPath(parent: self, _id: _id)
    }
    open func `businessHours`() -> BusinessHoursPath {
        return BusinessHoursPath(parent: self)
    }
    open func `callLog`(_ _id: String? = nil) -> CallLogPath {
        return CallLogPath(parent: self, _id: _id)
    }
    open func `callLogSync`() -> CallLogSyncPath {
        return CallLogSyncPath(parent: self)
    }
    open func `companyPager`() -> CompanyPagerPath {
        return CompanyPagerPath(parent: self)
    }
    open func `conferencing`() -> ConferencingPath {
        return ConferencingPath(parent: self)
    }
    open func `device`(_ _id: String? = nil) -> DevicePath {
        return DevicePath(parent: self, _id: _id)
    }
    open func `fax`() -> FaxPath {
        return FaxPath(parent: self)
    }
    open func `forwardingNumber`() -> ForwardingNumberPath {
        return ForwardingNumberPath(parent: self)
    }
    open func `grant`() -> GrantPath {
        return GrantPath(parent: self)
    }
    open func `greeting`(_ _id: String? = nil) -> GreetingPath {
        return GreetingPath(parent: self, _id: _id)
    }
    open func `meeting`(_ _id: String? = nil) -> MeetingPath {
        return MeetingPath(parent: self, _id: _id)
    }
    open func `meetingServiceInfo`() -> MeetingServiceInfoPath {
        return MeetingServiceInfoPath(parent: self)
    }
    open func `messageStore`(_ _id: String? = nil) -> MessageStorePath {
        return MessageStorePath(parent: self, _id: _id)
    }
    open func `messageSync`() -> MessageSyncPath {
        return MessageSyncPath(parent: self)
    }
    open func `phoneNumber`(_ _id: String? = nil) -> PhoneNumberPath {
        return PhoneNumberPath(parent: self, _id: _id)
    }
    open func `presence`() -> PresencePath {
        return PresencePath(parent: self)
    }
    open func `profileImage`(_ _id: String? = nil) -> ProfileImagePath {
        return ProfileImagePath(parent: self, _id: _id)
    }
    open func `ringout`(_ _id: String? = nil) -> RingoutPath {
        return RingoutPath(parent: self, _id: _id)
    }
    open func `sms`() -> SmsPath {
        return SmsPath(parent: self)
    }
    // Get Extension List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Extension List
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Extension List
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        // Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        open var `page`: Int?
        // Indicates the page size (number of items). If not specified, the value is '100' by default.
        open var `perPage`: Int?
        // Extension current state. Multiple values are supported. If 'Unassigned' is specified, then extensions without extensionNumber are returned. If not specified, then all extensions are returned
        open var `status`: String?
        // Extension type. Multiple values are supported
        open var `type`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(page: Int? = nil, perPage: Int? = nil, status: String? = nil, type: String? = nil) {
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
    open class ListResponse: Mappable {
        // List of extensions with extension information
        open var `records`: [ExtensionInfo]?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        // Information on paging
        open var `paging`: PagingInfo?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(records: [ExtensionInfo]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
            self.init()
            self.records = `records`
            self.navigation = `navigation`
            self.paging = `paging`
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
            `navigation` <- map["navigation"]
            `paging` <- map["paging"]
        }
    }
    // Get Extension Info by ID
    open func get(callback: @escaping (_ t: ExtensionInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ExtensionInfo?, error) in
            callback(t, error)
        }
    }
    // Update Extension by ID
    open func put(callback: @escaping (_ t: ExtensionInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: ExtensionInfo?, error) in
            callback(t, error)
        }
    }
    // Update Extension by ID
    open func put(parameters: Parameters, callback: @escaping (_ t: ExtensionInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: ExtensionInfo?, error) in
            callback(t, error)
        }
    }
    // Update Extension by ID
    open func put(parameters: ExtensionParameters, callback: @escaping (_ t: ExtensionInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
