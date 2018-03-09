import Foundation
import ObjectMapper
import Alamofire
open class RingOutPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "ring-out"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.7 (Release 5.16)</p><p>Makes a 2-leg RingOut call.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>RingOut</td><td>Performing two-legged ring-out phone calls</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func post(callback: @escaping (_ t: GetRingOutStatusResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GetRingOutStatusResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.7 (Release 5.16)</p><p>Makes a 2-leg RingOut call.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>RingOut</td><td>Performing two-legged ring-out phone calls</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: GetRingOutStatusResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: GetRingOutStatusResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.7 (Release 5.16)</p><p>Makes a 2-leg RingOut call.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>RingOut</td><td>Performing two-legged ring-out phone calls</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func post(parameters: MakeRingOutRequest, callback: @escaping (_ t: GetRingOutStatusResponse?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    <p style='font-style:italic;'>Since 1.0.7 (Release 5.16)</p><p>Returns the status of a 2-leg RingOut call.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>RingOut</td><td>Performing two-legged ring-out phone calls</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: GetRingOutStatusResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetRingOutStatusResponse?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'></p><p>Cancels the 2-leg RingOut call.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>RingOut</td><td>Performing two-legged ring-out phone calls</td></tr></tbody></table><h4>Usage Plan Group</h4><p>Heavy</p>
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
