import Foundation
import ObjectMapper
import Alamofire
open class ParkLocationsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "park-locations"
        }
    }
    open func `users`() -> UsersPath {
        return UsersPath(parent: self)
    }
    open func `bulkAssign`() -> BulkAssignPath {
        return BulkAssignPath(parent: self)
    }
}
