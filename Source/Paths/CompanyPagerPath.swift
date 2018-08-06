import Foundation
import ObjectMapper
import Alamofire
open class CompanyPagerPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "company-pager"
        }
    }
    /*
    Creates and sends an internal text message.
    */
    open func post(callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GetMessageInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Creates and sends an internal text message.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: GetMessageInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Creates and sends an internal text message.
    */
    open func post(parameters: CreateInternalTextMessageRequest, callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
