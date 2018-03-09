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
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Returns supported license types.</p><h4>API Group</h4><p>Light</p>
    */
    open func list(callback: @escaping (_ t: LicenseTypes?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: LicenseTypes?, error) in
            callback(t, error)
        }
    }
}
