import Foundation
import ObjectMapper
import Alamofire
open class ServiceParameterPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "service-parameter"
        }
    }
}
