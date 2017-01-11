import Foundation
import ObjectMapper
import Alamofire
open class EndPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "end"
        }
    }
    // End Current Meeting
    open func post(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
