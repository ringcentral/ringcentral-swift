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
    <p style='font-style:italic;'>Since 1.0.27 (Release 8.3)</p><p>Returns the API status; status '200' means the API is working fine, and '503' means it is temporary unavailable.</p><h4>API Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
