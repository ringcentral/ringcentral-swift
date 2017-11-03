import Foundation
import ObjectMapper
import Alamofire
open class CompaniesPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "companies"
        }
    }
    /*
    Returns a company by ID.
    */
    open func get(callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    open class GetResponse: Mappable {
        /*
        Internal identifier of an RC account/Glip company, or tilde (~) to indicate a company the current user belongs to
        */
        open var `id`: String?
        /*
        Name of a company
        */
        open var `name`: String?
        /*
        Domain name of a company
        */
        open var `domain`: String?
        /*
        Datetime of creation in ISO 8601 format
        */
        open var `creationTime`: String?
        /*
        Datetime of last modification in ISO 8601 format
        */
        open var `lastModifiedTime`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(id: String? = nil, name: String? = nil, domain: String? = nil, creationTime: String? = nil, lastModifiedTime: String? = nil) {
            self.init()
            self.id = `id`
            self.name = `name`
            self.domain = `domain`
            self.creationTime = `creationTime`
            self.lastModifiedTime = `lastModifiedTime`
        }
        open func mapping(map: Map) {
            `id` <- (map["id"], StringTransform())
            `name` <- map["name"]
            `domain` <- map["domain"]
            `creationTime` <- map["creationTime"]
            `lastModifiedTime` <- map["lastModifiedTime"]
        }
    }
}
