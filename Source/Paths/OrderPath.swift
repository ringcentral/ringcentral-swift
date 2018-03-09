import Foundation
import ObjectMapper
import Alamofire
open class OrderPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "order"
        }
    }
}
