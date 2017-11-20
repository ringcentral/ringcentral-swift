import Foundation
import ObjectMapper
import Alamofire
open class DefaultPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "default"
        }
    }
}
