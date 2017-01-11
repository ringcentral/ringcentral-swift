import Foundation
import ObjectMapper
import Alamofire
open class MeetingServiceInfoPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "meeting/service-info"
        }
    }
    // Get Meeting Service Info
    open func get(callback: @escaping (_ t: MeetingServiceInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: MeetingServiceInfo?, error) in
            callback(t, error)
        }
    }
}
