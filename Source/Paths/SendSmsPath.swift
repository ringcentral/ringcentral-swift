import Foundation
import ObjectMapper
import Alamofire
open class SendSmsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "send-sms"
        }
    }
}
