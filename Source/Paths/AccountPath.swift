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
    open func `callLogSync`() -> CallLogSyncPath {
        return CallLogSyncPath(parent: self)
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
    open func `bot`() -> BotPath {
        return BotPath(parent: self)
    }
    open func `presence`() -> PresencePath {
        return PresencePath(parent: self)
    }
    open func `userRole`(_ _id: String? = nil) -> UserRolePath {
        return UserRolePath(parent: self, _id: _id)
    }
    open func `businessHours`() -> BusinessHoursPath {
        return BusinessHoursPath(parent: self)
    }
    open func `greeting`(_ _id: String? = nil) -> GreetingPath {
        return GreetingPath(parent: self, _id: _id)
    }
    open func `answeringRule`(_ _id: String? = nil) -> AnsweringRulePath {
        return AnsweringRulePath(parent: self, _id: _id)
    }
    open func `ivrMenus`(_ _id: String? = nil) -> IvrMenusPath {
        return IvrMenusPath(parent: self, _id: _id)
    }
    open func `ivrPrompts`(_ _id: String? = nil) -> IvrPromptsPath {
        return IvrPromptsPath(parent: self, _id: _id)
    }
    open func `businessAddress`() -> BusinessAddressPath {
        return BusinessAddressPath(parent: self)
    }
    open func `serviceInfo`() -> ServiceInfoPath {
        return ServiceInfoPath(parent: self)
    }
    open func `dialingPlan`() -> DialingPlanPath {
        return DialingPlanPath(parent: self)
    }
    open func `phoneNumber`(_ _id: String? = nil) -> PhoneNumberPath {
        return PhoneNumberPath(parent: self, _id: _id)
    }
    open func `device`(_ _id: String? = nil) -> DevicePath {
        return DevicePath(parent: self, _id: _id)
    }
    open func `order`(_ _id: String? = nil) -> OrderPath {
        return OrderPath(parent: self, _id: _id)
    }
    open func `licenses`(_ _id: String? = nil) -> LicensesPath {
        return LicensesPath(parent: self, _id: _id)
    }
    open func `department`(_ _id: String? = nil) -> DepartmentPath {
        return DepartmentPath(parent: self, _id: _id)
    }
    open func `pagingOnlyGroups`(_ _id: String) -> PagingOnlyGroupsPath {
        return PagingOnlyGroupsPath(parent: self, _id: _id)
    }
    open func `parkLocations`(_ _id: String) -> ParkLocationsPath {
        return ParkLocationsPath(parent: self, _id: _id)
    }
    /*
    <p style='font-style:italic;'>Since 1.0.0</p><p>Returns basic information about a particular RingCentral customer account.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: GetAccountInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetAccountInfoResponse?, error) in
            callback(t, error)
        }
    }
}
