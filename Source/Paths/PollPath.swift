import Foundation
import ObjectMapper
import Alamofire
open class PollPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "poll"
        }
    }
}
