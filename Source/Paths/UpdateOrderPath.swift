import Foundation
import ObjectMapper
import Alamofire
open class UpdateOrderPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "update-order"
        }
    }
}
