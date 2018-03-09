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
    <p style='font-style:italic;'>Since 1.0.32 (Release 9.3)</p><p>Returns a company IVR menu by ID</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func get(callback: @escaping (_ t: IVRMenuInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: IVRMenuInfo?, error) in
            callback(t, error)
        }
    }
}
