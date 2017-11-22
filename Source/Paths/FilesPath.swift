import Foundation
import ObjectMapper
import Alamofire
open class FilesPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "files"
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Posts a file.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Heavy</p>
    */
    open func post(callback: @escaping (_ t: PostGlipFile?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: PostGlipFile?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Posts a file.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Heavy</p>
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: PostGlipFile?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: PostGlipFile?, error) in
            callback(t, error)
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Posts a file.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Heavy</p>
    */
    open func post(parameters: PostParameters, callback: @escaping (_ t: PostGlipFile?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        /*
        Internal identifier of a group the post with file attached will be added to
        */
        open var `groupId`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(groupId: String? = nil) {
            self.init()
            self.groupId = `groupId`
        }
        open func mapping(map: Map) {
            `groupId` <- map["groupId"]
        }
    }
    /*
    <p style='font-style:italic;'>Since 1.0.31 (Release 9.2)</p><p>Returns a file.</p><h4>Required Permissions</h4><table class='fullwidth'><thead><tr><th>Permission</th><th>Description</th></tr></thead><tbody><tr><td class='code'>Glip</td><td>Availability of Glip</td></tr></tbody></table><h4>API Group</h4><p>Medium</p>
    */
    open func get(callback: @escaping (_ t: PostGlipFile?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: PostGlipFile?, error) in
            callback(t, error)
        }
    }
}
