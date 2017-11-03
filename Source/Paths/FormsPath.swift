import Foundation
import ObjectMapper
import Alamofire
open class FormsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "forms"
        }
    }
    open func `address`() -> AddressPath {
        return AddressPath(parent: self)
    }
}
