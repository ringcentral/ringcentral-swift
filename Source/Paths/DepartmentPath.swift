import Foundation
import ObjectMapper
import Alamofire
open class DepartmentPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "department"
        }
    }
    open func `members`() -> MembersPath {
        return MembersPath(parent: self)
    }
    open func `bulkAssign`() -> BulkAssignPath {
        return BulkAssignPath(parent: self)
    }
}
