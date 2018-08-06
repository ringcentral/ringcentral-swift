import Foundation
import ObjectMapper
import Alamofire
open class SmsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "sms"
        }
    }
    /*
    Creates and sends new SMS message. Sending SMS messages simultaneously to different recipients is limited up to 50 requests per minute; relevant for all client applications.
    */
    open func post(callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GetMessageInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Creates and sends new SMS message. Sending SMS messages simultaneously to different recipients is limited up to 50 requests per minute; relevant for all client applications.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: GetMessageInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Creates and sends new SMS message. Sending SMS messages simultaneously to different recipients is limited up to 50 requests per minute; relevant for all client applications.
    */
    open func post(parameters: CreateSMSMessage, callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
