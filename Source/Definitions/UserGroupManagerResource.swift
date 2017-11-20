import Foundation
import ObjectMapper
open class UserGroupManagerResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `extensionNumber`: String?
    /*
    */
    open var `firstName`: String?
    /*
    */
    open var `lastName`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, extensionNumber: String? = nil, firstName: String? = nil, lastName: String? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.extensionNumber = `extensionNumber`
        self.firstName = `firstName`
        self.lastName = `lastName`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `extensionNumber` <- map["extensionNumber"]
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
    }
}
