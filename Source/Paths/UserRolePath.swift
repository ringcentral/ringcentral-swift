import Foundation
import ObjectMapper
import Alamofire
open class UserRolePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "user-role"
        }
    }
}
