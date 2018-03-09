import Foundation
import ObjectMapper
import Alamofire
open class BannersPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "banners"
        }
    }
}
