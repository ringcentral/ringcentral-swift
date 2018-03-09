import Foundation
import ObjectMapper
import Alamofire
open class FreeNumbersPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "free-numbers"
        }
    }
}
