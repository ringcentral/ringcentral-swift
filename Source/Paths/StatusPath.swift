import Foundation
import ObjectMapper
import Alamofire
open class StatusPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "status"
        }
    }
    /*
    Returns current PAS service status.
    */
    open func get(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
