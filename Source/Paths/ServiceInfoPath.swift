import Foundation
import ObjectMapper
import Alamofire
open class ServiceInfoPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "service-info"
        }
    }
    /*
    <p style='font-style:italic;'></p><p></p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>ReadAccounts</td><td>Viewing user account info (including name, business name, address and phone number/account number)</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: GetServiceInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetServiceInfoResponse?, error) in
            callback(t, error)
        }
    }
}
