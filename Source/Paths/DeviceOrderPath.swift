import Foundation
import ObjectMapper
import Alamofire
open class DeviceOrderPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "device-order"
        }
    }
    open func `update`() -> UpdatePath {
        return UpdatePath(parent: self)
    }
}
