import Foundation
import ObjectMapper
import Alamofire
open class ContentPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "content"
        }
    }
    /*
    Returns media content of a call recording.
    */
    open func get(callback: @escaping (_ t: Binary?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: Binary?, error) in
            callback(t, error)
        }
    }
}
