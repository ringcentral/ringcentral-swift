import Foundation
import ObjectMapper
open class ConflictsInfo: Mappable {
    /*
    Internal identifier of a conflicting extension assigned to another account of the current federation
    */
    open var `id`: String?
    /*
    Extension user first name
    */
    open var `firstName`: String?
    /*
    Extension user last name
    */
    open var `lastName`: String?
    /*
    Account data of an extension
    */
    open var `account`: FederationConflictsAccountInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, firstName: String? = nil, lastName: String? = nil, account: FederationConflictsAccountInfo? = nil) {
        self.init()
        self.id = `id`
        self.firstName = `firstName`
        self.lastName = `lastName`
        self.account = `account`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `account` <- map["account"]
    }
}
