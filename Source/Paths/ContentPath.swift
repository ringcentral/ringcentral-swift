import Foundation
import ObjectMapper
import Alamofire
open class ContentPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "content"
        }
    }
    // Get Message Attachment
    open func get(callback: @escaping (_ t: Binary?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: Binary?, error) in
            callback(t, error)
        }
    }
}
