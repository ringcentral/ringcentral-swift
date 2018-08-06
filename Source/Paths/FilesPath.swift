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
    Posts a file.
    */
    open func post(callback: @escaping (_ t: PostGlipFile?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: PostGlipFile?, error) in
            callback(t, error)
        }
    }
    /*
    Posts a file.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: PostGlipFile?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: PostGlipFile?, error) in
            callback(t, error)
        }
    }
    /*
    Posts a file.
    */
    open func post(parameters: PostParameters, callback: @escaping (_ t: PostGlipFile?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        /*
        Internal identifier of a group to which the post with attachement will be added to
        */
        open var `groupId`: Int?
        /*
        Name of a file attached
        */
        open var `name`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(groupId: Int? = nil, name: String? = nil) {
            self.init()
            self.groupId = `groupId`
            self.name = `name`
        }
        open func mapping(map: Map) {
            `groupId` <- map["groupId"]
            `name` <- map["name"]
        }
    }
}
