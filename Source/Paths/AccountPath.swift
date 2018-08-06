import Foundation
import ObjectMapper
import Alamofire
open class AccountPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "account"
        }
    }
    open func `extension`(_ _id: String? = "~") -> ExtensionPath {
        return ExtensionPath(parent: self, _id: _id)
    }
    open func `callLog`(_ _id: String? = nil) -> CallLogPath {
        return CallLogPath(parent: self, _id: _id)
    }
    open func `activeCalls`() -> ActiveCallsPath {
        return ActiveCallsPath(parent: self)
    }
    open func `recording`(_ _id: String) -> RecordingPath {
        return RecordingPath(parent: self, _id: _id)
    }
    open func `directory`() -> DirectoryPath {
        return DirectoryPath(parent: self)
    }
    open func `presence`() -> PresencePath {
        return PresencePath(parent: self)
    }
    open func `businessHours`() -> BusinessHoursPath {
        return BusinessHoursPath(parent: self)
    }
    open func `answeringRule`(_ _id: String? = nil) -> AnsweringRulePath {
        return AnsweringRulePath(parent: self, _id: _id)
    }
    open func `greeting`(_ _id: String? = nil) -> GreetingPath {
        return GreetingPath(parent: self, _id: _id)
    }
    open func `ivrPrompts`(_ _id: String? = nil) -> IvrPromptsPath {
        return IvrPromptsPath(parent: self, _id: _id)
    }
    open func `ivrMenus`(_ _id: String) -> IvrMenusPath {
        return IvrMenusPath(parent: self, _id: _id)
    }
    open func `callRecording`() -> CallRecordingPath {
        return CallRecordingPath(parent: self)
    }
    open func `businessAddress`() -> BusinessAddressPath {
        return BusinessAddressPath(parent: self)
    }
    open func `serviceInfo`() -> ServiceInfoPath {
        return ServiceInfoPath(parent: self)
    }
    open func `phoneNumber`(_ _id: String? = nil) -> PhoneNumberPath {
        return PhoneNumberPath(parent: self, _id: _id)
    }
    open func `templates`(_ _id: String? = nil) -> TemplatesPath {
        return TemplatesPath(parent: self, _id: _id)
    }
    open func `bots`() -> BotsPath {
        return BotsPath(parent: self)
    }
    open func `pagingOnlyGroups`(_ _id: String) -> PagingOnlyGroupsPath {
        return PagingOnlyGroupsPath(parent: self, _id: _id)
    }
    open func `licenses`(_ _id: String? = nil) -> LicensesPath {
        return LicensesPath(parent: self, _id: _id)
    }
    open func `callQueues`(_ _id: String? = nil) -> CallQueuesPath {
        return CallQueuesPath(parent: self, _id: _id)
    }
    open func `callMonitoringGroups`(_ _id: String? = nil) -> CallMonitoringGroupsPath {
        return CallMonitoringGroupsPath(parent: self, _id: _id)
    }
    open func `device`(_ _id: String? = nil) -> DevicePath {
        return DevicePath(parent: self, _id: _id)
    }
    /*
    Returns basic information about a particular RingCentral customer account.
    */
    open func get(callback: @escaping (_ t: GetAccountInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetAccountInfoResponse?, error) in
            callback(t, error)
        }
    }
}
