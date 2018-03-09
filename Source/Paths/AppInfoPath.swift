import Foundation
import ObjectMapper
import Alamofire
open class AppInfoPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "app-info"
        }
    }
}
