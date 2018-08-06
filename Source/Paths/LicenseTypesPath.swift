import Foundation
import ObjectMapper
import Alamofire
open class LicenseTypesPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "license-types"
        }
    }
    /*
    Returns supported license types.
    */
    open func list(callback: @escaping (_ t: LicenseTypes?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: LicenseTypes?, error) in
            callback(t, error)
        }
    }
}
