import Foundation
import ObjectMapper
import Alamofire
open class VerificationCallPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "verification-call"
        }
    }
}
