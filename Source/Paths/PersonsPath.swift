import Foundation
import ObjectMapper
import Alamofire
open class PersonsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "persons"
        }
    }
    /*
    Returns a user or multiple users by their ID(s). Batch request is supported.
    */
    open func get(callback: @escaping (_ t: GlipPersonInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GlipPersonInfo?, error) in
            callback(t, error)
        }
    }
}
