import Foundation
import ObjectMapper
import Alamofire
open class BulkAssignPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "bulk-assign"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Updates group members. Please note: Only groups of 'Team' type can be updated. Currently only one operation at a time (either adding or removal) is supported.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func post(callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GlipGroupInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Updates group members. Please note: Only groups of 'Team' type can be updated. Currently only one operation at a time (either adding or removal) is supported.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: GlipGroupInfo?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.28 (Release 8.4)</p><p>Updates group members. Please note: Only groups of 'Team' type can be updated. Currently only one operation at a time (either adding or removal) is supported.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func post(parameters: EditGroupRequest, callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
