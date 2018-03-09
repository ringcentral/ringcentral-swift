import Foundation
import ObjectMapper
import Alamofire
open class ValidatePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "validate"
        }
    }
}
