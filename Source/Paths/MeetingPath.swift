import Foundation
import ObjectMapper
import Alamofire
open class MeetingPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "meeting"
        }
    }
    open func `end`() -> EndPath {
        return EndPath(parent: self)
    }
    /*
    */
    open func list(callback: @escaping (_ t: MeetingsResource?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: MeetingsResource?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func post(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    */
    open func post(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    */
    open func post(parameters: MeetingRequestResource, callback: @escaping (_ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    */
    open func get(callback: @escaping (_ t: MeetingResponseResource?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: MeetingResponseResource?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func put(callback: @escaping (_ t: MeetingResponseResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: MeetingResponseResource?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func put(parameters: Parameters, callback: @escaping (_ t: MeetingResponseResource?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: MeetingResponseResource?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func put(parameters: MeetingRequestResource, callback: @escaping (_ t: MeetingResponseResource?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
