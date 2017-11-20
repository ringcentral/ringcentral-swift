import Foundation
import ObjectMapper
import Alamofire
open class PersonsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "persons"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Returns a user or few users by ID(s). Batch request is supported.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Light</p>
    */
    open func get(callback: @escaping (_ t: GlipPersonInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GlipPersonInfo?, error) in
            callback(t, error)
        }
    }
}
