import Foundation
import ObjectMapper
import Alamofire
open class DirectRingOutPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "direct-ring-out"
        }
    }
}
