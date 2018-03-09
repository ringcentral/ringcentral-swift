import Foundation
import ObjectMapper
import Alamofire
open class GenerateCodePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "generate-code"
        }
    }
}
