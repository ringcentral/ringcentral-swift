import Foundation
import ObjectMapper
import Alamofire
open class PersonsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "persons"
        }
    }
    // Get Person by ID
    open func get(callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    open class GetResponse: Mappable {
        // Internal identifier of a user
        open var `id`: String?
        // First name of a user
        open var `firstName`: String?
        // Last name of a user
        open var `lastName`: String?
        // Email of a user
        open var `email`: String?
        // Photo of a user
        open var `avatar`: String?
        // Internal identifier of a company
        open var `companyId`: String?
        // Time of creation in ISO 8601 format
        open var `creationTime`: String?
        // Time of last modification in ISO 8601 format
        open var `lastModifiedTime`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(id: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, avatar: String? = nil, companyId: String? = nil, creationTime: String? = nil, lastModifiedTime: String? = nil) {
            self.init()
            self.id = `id`
            self.firstName = `firstName`
            self.lastName = `lastName`
            self.email = `email`
            self.avatar = `avatar`
            self.companyId = `companyId`
            self.creationTime = `creationTime`
            self.lastModifiedTime = `lastModifiedTime`
        }
        open func mapping(map: Map) {
            `id` <- (map["id"], StringTransform())
            `firstName` <- map["firstName"]
            `lastName` <- map["lastName"]
            `email` <- map["email"]
            `avatar` <- map["avatar"]
            `companyId` <- map["companyId"]
            `creationTime` <- map["creationTime"]
            `lastModifiedTime` <- map["lastModifiedTime"]
        }
    }
}
