import Foundation
import ObjectMapper
import Alamofire
open class InternalPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "internal"
        }
    }
    open func `addressBook`() -> AddressBookPath {
        return AddressBookPath(parent: self)
    }
    open func `deviceOrder`() -> DeviceOrderPath {
        return DeviceOrderPath(parent: self)
    }
    open func `numberPorting`() -> NumberPortingPath {
        return NumberPortingPath(parent: self)
    }
    open func `oauth`() -> OauthPath {
        return OauthPath(parent: self)
    }
    open func `presence`() -> PresencePath {
        return PresencePath(parent: self)
    }
    open func `renderingQueue`() -> RenderingQueuePath {
        return RenderingQueuePath(parent: self)
    }
    open func `sendEmail`() -> SendEmailPath {
        return SendEmailPath(parent: self)
    }
    open func `sendSms`() -> SendSmsPath {
        return SendSmsPath(parent: self)
    }
    open func `serviceParameter`() -> ServiceParameterPath {
        return ServiceParameterPath(parent: self)
    }
}
