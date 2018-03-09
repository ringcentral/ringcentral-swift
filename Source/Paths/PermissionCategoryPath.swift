import Foundation
import ObjectMapper
import Alamofire
open class PermissionCategoryPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "permission-category"
        }
    }
}
