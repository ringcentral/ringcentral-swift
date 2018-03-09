import Foundation
import ObjectMapper
import Alamofire
open class AppSessionPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "app-session"
        }
    }
}
