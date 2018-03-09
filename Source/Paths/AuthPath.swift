import Foundation
import ObjectMapper
import Alamofire
open class AuthPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "auth"
        }
    }
}
