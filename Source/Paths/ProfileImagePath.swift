import Foundation
import ObjectMapper
import Alamofire
open class ProfileImagePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "profile-image"
        }
    }
    /*
    Returns a profile image of an extension.
    */
    open func get(callback: @escaping (_ t: Binary?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: Binary?, error) in
            callback(t, error)
        }
    }
    /*
    Returns the extension profile image.
    */
    open func post(callback: @escaping (_ t: Binary?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: Binary?, error) in
            callback(t, error)
        }
    }
    /*
    Updates profile image of an extension.
    */
    open func put(callback: @escaping (_ t: Binary?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: Binary?, error) in
            callback(t, error)
        }
    }
}
