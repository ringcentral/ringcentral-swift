import Foundation
import ObjectMapper
import Alamofire
open class PermissionPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "permission"
        }
    }
}
