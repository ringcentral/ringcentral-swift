import Foundation
import ObjectMapper
import Alamofire
open class TouchPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "touch"
        }
    }
}
