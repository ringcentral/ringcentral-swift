import Foundation
import ObjectMapper
import Alamofire
open class ServicePlanPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "service-plan"
        }
    }
}
