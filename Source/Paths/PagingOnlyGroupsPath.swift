import Foundation
import ObjectMapper
import Alamofire
open class PagingOnlyGroupsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "paging-only-groups"
        }
    }
    open func `users`() -> UsersPath {
        return UsersPath(parent: self)
    }
    open func `devices`() -> DevicesPath {
        return DevicesPath(parent: self)
    }
    open func `bulkAssign`() -> BulkAssignPath {
        return BulkAssignPath(parent: self)
    }
}
