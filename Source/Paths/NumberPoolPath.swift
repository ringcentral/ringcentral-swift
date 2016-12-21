import Foundation
import ObjectMapper
import Alamofire
open class NumberPoolPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "number-pool"
        }
    }
    open func `lookup`() -> LookupPath {
        return LookupPath(parent: self)
    }
    open func `reserve`() -> ReservePath {
        return ReservePath(parent: self)
    }
}
