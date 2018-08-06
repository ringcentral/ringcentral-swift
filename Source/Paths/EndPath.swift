import Foundation
import ObjectMapper
import Alamofire
open class EndPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "end"
        }
    }
    /*
    Ends a meetings which is in progress.
    */
    open func post(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
