import Foundation
import ObjectMapper
import Alamofire
open class CompanyPagerPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "company-pager"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.2</p><p>Creates and sends a pager message.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>InternalMessages</td><td>Sending and receiving intra-company text messages</td></tr><tr><td class='code'>ReadMessages</td><td>Viewing user messages</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func post(callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GetMessageInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.2</p><p>Creates and sends a pager message.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>InternalMessages</td><td>Sending and receiving intra-company text messages</td></tr><tr><td class='code'>ReadMessages</td><td>Viewing user messages</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: GetMessageInfoResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.2</p><p>Creates and sends a pager message.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>InternalMessages</td><td>Sending and receiving intra-company text messages</td></tr><tr><td class='code'>ReadMessages</td><td>Viewing user messages</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Medium</p>
    */
    open func post(parameters: CreatePagerMessageRequest, callback: @escaping (_ t: GetMessageInfoResponse?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
