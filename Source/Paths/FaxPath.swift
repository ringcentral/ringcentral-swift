import Foundation
import ObjectMapper
import Alamofire
open class FaxPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "fax"
        }
    }
}
