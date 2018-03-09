import Foundation
import ObjectMapper
import Alamofire
open class DirectPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "direct"
        }
    }
}
