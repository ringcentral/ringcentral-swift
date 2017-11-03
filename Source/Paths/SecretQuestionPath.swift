import Foundation
import ObjectMapper
import Alamofire
open class SecretQuestionPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "secret-question"
        }
    }
}
