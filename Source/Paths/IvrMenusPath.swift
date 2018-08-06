import Foundation
import ObjectMapper
import Alamofire
open class IvrMenusPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "ivr-menus"
        }
    }
    /*
    Returns a company IVR menu by ID.
    */
    open func get(callback: @escaping (_ t: IVRMenuInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: IVRMenuInfo?, error) in
            callback(t, error)
        }
    }
}
