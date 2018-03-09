import Foundation
import ObjectMapper
import Alamofire
open class ShippingOptionsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "shipping-options"
        }
    }
}
