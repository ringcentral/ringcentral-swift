import Foundation
import ObjectMapper
import Alamofire
open class ClientInfoPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "client-info"
        }
    }
    open func `sipProvision`() -> SipProvisionPath {
        return SipProvisionPath(parent: self)
    }
}
