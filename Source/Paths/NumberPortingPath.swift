import Foundation
import ObjectMapper
import Alamofire
open class NumberPortingPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "number-porting"
        }
    }
    open func `updateOrder`() -> UpdateOrderPath {
        return UpdateOrderPath(parent: self)
    }
}
