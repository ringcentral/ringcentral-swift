import Foundation
import ObjectMapper
open class FederationExtensionInfo: Mappable {
    /*
    Internal identifier of an extension of current account
    */
    open var `id`: String?
    /*
    Number of an extension
    */
    open var `extensionNumber`: String?
    /*
    Extension user first name
    */
    open var `firstName`: String?
    /*
    Extension user last name
    */
    open var `lastName`: String?
    /*
    Conflicting extensions information
    */
    open var `conflicts`: [ConflictsInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, extensionNumber: String? = nil, firstName: String? = nil, lastName: String? = nil, conflicts: [ConflictsInfo]? = nil) {
        self.init()
        self.id = `id`
        self.extensionNumber = `extensionNumber`
        self.firstName = `firstName`
        self.lastName = `lastName`
        self.conflicts = `conflicts`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `extensionNumber` <- map["extensionNumber"]
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `conflicts` <- map["conflicts"]
    }
}
