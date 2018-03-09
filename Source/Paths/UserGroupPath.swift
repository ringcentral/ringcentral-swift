import Foundation
import ObjectMapper
import Alamofire
open class UserGroupPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "user-group"
        }
    }
    open func `bulkAssign`() -> BulkAssignPath {
        return BulkAssignPath(parent: self)
    }
    open func `members`() -> MembersPath {
        return MembersPath(parent: self)
    }
}
