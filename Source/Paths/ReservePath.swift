import Foundation
import ObjectMapper
import Alamofire
open class ReservePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "reserve"
        }
    }
}
