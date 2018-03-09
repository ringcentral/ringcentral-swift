import Foundation
import ObjectMapper
import Alamofire
open class BrandPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "brand"
        }
    }
}
