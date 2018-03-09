import Foundation
import ObjectMapper
import Alamofire
open class FederationPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "federation"
        }
    }
    /*
    <p style='font-style:italic;'></p><p>Returns information on a federation and associated accounts.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func get(callback: @escaping (_ t: FederationInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: FederationInfo?, error) in
            callback(t, error)
        }
    }
}
