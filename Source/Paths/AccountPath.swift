import Foundation
import ObjectMapper
import Alamofire
open class AccountPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "account"
        }
    }
    open func `validate`() -> ValidatePath {
        return ValidatePath(parent: self)
    }
    open func `activeCalls`() -> ActiveCallsPath {
        return ActiveCallsPath(parent: self)
    }
    open func `businessAddress`() -> BusinessAddressPath {
        return BusinessAddressPath(parent: self)
    }
    open func `callLog`(_ _id: String? = nil) -> CallLogPath {
        return CallLogPath(parent: self, _id: _id)
    }
    open func `department`(_ _id: String) -> DepartmentPath {
        return DepartmentPath(parent: self, _id: _id)
    }
    open func `device`(_ _id: String? = nil) -> DevicePath {
        return DevicePath(parent: self, _id: _id)
    }
    open func `dialingPlan`() -> DialingPlanPath {
        return DialingPlanPath(parent: self)
    }
    open func `extension`(_ _id: String? = "~") -> ExtensionPath {
        return ExtensionPath(parent: self, _id: _id)
    }
    open func `order`(_ _id: String? = nil) -> OrderPath {
        return OrderPath(parent: self, _id: _id)
    }
    open func `phoneNumber`(_ _id: String? = nil) -> PhoneNumberPath {
        return PhoneNumberPath(parent: self, _id: _id)
    }
    open func `presence`() -> PresencePath {
        return PresencePath(parent: self)
    }
    open func `recording`(_ _id: String) -> RecordingPath {
        return RecordingPath(parent: self, _id: _id)
    }
    open func `serviceInfo`() -> ServiceInfoPath {
        return ServiceInfoPath(parent: self)
    }
    open func `userGroup`(_ _id: String? = nil) -> UserGroupPath {
        return UserGroupPath(parent: self, _id: _id)
    }
    open func `userRole`() -> UserRolePath {
        return UserRolePath(parent: self)
    }
    open func `verificationCall`(_ _id: String? = nil) -> VerificationCallPath {
        return VerificationCallPath(parent: self, _id: _id)
    }
    /*
    */
    open func get(callback: @escaping (_ t: AccountInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: AccountInfo?, error) in
            callback(t, error)
        }
    }
}
