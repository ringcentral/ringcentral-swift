import Foundation
import ObjectMapper
import Alamofire
open class SipProvisionPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "sip-provision"
        }
    }
}
