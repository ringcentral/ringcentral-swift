import Foundation
import ObjectMapper
import Alamofire
open class AssignedRolePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "assigned-role"
        }
    }
}
