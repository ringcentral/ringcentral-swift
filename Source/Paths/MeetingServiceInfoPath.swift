import Foundation
import ObjectMapper
import Alamofire
open class MeetingServiceInfoPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "meeting/service-info"
        }
    }
    /*
    Returns information on dial-in numbers for meetings, support and international dial-in numbers URIs and meeting account information.
    */
    open func get(callback: @escaping (_ t: MeetingServiceInfoResource?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: MeetingServiceInfoResource?, error) in
            callback(t, error)
        }
    }
}
