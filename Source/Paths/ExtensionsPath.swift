import Foundation
import ObjectMapper
import Alamofire
open class ExtensionsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "extensions"
        }
    }
    /*
    Returns the list of extensions to be recorded.
    */
    open func get(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
