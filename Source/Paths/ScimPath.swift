import Foundation
import ObjectMapper
import Alamofire
open class ScimPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "scim"
        }
    }
    open func `users`(_ _id: String? = nil) -> UsersPath {
        return UsersPath(parent: self, _id: _id)
    }
}
