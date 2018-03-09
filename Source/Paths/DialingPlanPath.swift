import Foundation
import ObjectMapper
import Alamofire
open class DialingPlanPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "dialing-plan"
        }
    }
}
