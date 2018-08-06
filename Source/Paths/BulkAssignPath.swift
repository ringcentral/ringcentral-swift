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
    Updates group members. Please note: Only groups of 'Team' type can be updated. Currently only one operation at a time (either adding or removal) is supported.
    */
    open func post(callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GlipGroupInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Updates group members. Please note: Only groups of 'Team' type can be updated. Currently only one operation at a time (either adding or removal) is supported.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: GlipGroupInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Updates group members. Please note: Only groups of 'Team' type can be updated. Currently only one operation at a time (either adding or removal) is supported.
    */
    open func post(parameters: EditGroupRequest, callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
}
