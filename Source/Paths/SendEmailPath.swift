import Foundation
import ObjectMapper
import Alamofire
open class SendEmailPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "send-email"
        }
    }
}
