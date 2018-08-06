import Foundation
import ObjectMapper
import Alamofire
open class VoicemailPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "voicemail"
        }
    }
    /*
    Sends a voicemail.
    */
    open func post(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    Sends a voicemail.
    */
    open func post(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    Sends a voicemail.
    */
    open func post(parameters: CreateVoicemail, callback: @escaping (_ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
