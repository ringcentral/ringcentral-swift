import Foundation
import ObjectMapper
import Alamofire
open class LinePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "line"
        }
    }
}
