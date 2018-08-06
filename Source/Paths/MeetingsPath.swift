import Foundation
import ObjectMapper
import Alamofire
open class MeetingsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "meetings"
        }
    }
    /*
    Returns Zoom meetings presence status of an extension
    */
    open func get(callback: @escaping (_ t: MeetingsPresence?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: MeetingsPresence?, error) in
            callback(t, error)
        }
    }
    /*
    Set Zoom meetings presence status of an extension
    */
    open func post(callback: @escaping (_ t: MeetingsPresence?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: MeetingsPresence?, error) in
            callback(t, error)
        }
    }
    /*
    Set Zoom meetings presence status of an extension
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: MeetingsPresence?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: MeetingsPresence?, error) in
            callback(t, error)
        }
    }
    /*
    Set Zoom meetings presence status of an extension
    */
    open func post(parameters: MeetingsPresence, callback: @escaping (_ t: MeetingsPresence?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
