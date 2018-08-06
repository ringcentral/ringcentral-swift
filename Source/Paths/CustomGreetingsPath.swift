import Foundation
import ObjectMapper
import Alamofire
open class CustomGreetingsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "custom-greetings"
        }
    }
    /*
    Returns call recording custom greetings.
    */
    open func get(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    Deletes call recording custom greetings.
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
