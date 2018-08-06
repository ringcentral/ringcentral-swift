import Foundation
import ObjectMapper
import Alamofire
open class BotsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "bots"
        }
    }
    /*
    Creates a bot extension. Please note: Bot extension is always created in Enabled status, no welcome email is sent.
    */
    open func post(callback: @escaping (_ t: BotExtensionCreation?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: BotExtensionCreation?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a bot extension. Please note: Bot extension is always created in Enabled status, no welcome email is sent.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: BotExtensionCreation?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: BotExtensionCreation?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a bot extension. Please note: Bot extension is always created in Enabled status, no welcome email is sent.
    */
    open func post(parameters: BotExtensionCreationRequest, callback: @escaping (_ t: BotExtensionCreation?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
