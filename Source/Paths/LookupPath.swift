import Foundation
import ObjectMapper
import Alamofire
open class LookupPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "lookup"
        }
    }
}
