import Foundation
import ObjectMapper
open class ContactResource: Mappable {
    /*
    */
    open var `account`: AccountResource?
    /*
    */
    open var `department`: String?
    /*
    */
    open var `email`: String?
    /*
    */
    open var `extensionNumber`: String?
    /*
    */
    open var `firstName`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `lastName`: String?
    /*
    */
    open var `jobTitle`: String?
    /*
    */
    open var `phoneNumbers`: [PhoneNumberResource]?
    /*
    */
    open var `profileImage`: AccountDirectoryProfileImageResource?
    /*
    */
    open var `site`: BusinessSiteResource?
    /*
    */
    open var `status`: String?
    /*
    */
    open var `type`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(account: AccountResource? = nil, department: String? = nil, email: String? = nil, extensionNumber: String? = nil, firstName: String? = nil, id: String? = nil, lastName: String? = nil, jobTitle: String? = nil, phoneNumbers: [PhoneNumberResource]? = nil, profileImage: AccountDirectoryProfileImageResource? = nil, site: BusinessSiteResource? = nil, status: String? = nil, type: String? = nil) {
        self.init()
        self.account = `account`
        self.department = `department`
        self.email = `email`
        self.extensionNumber = `extensionNumber`
        self.firstName = `firstName`
        self.id = `id`
        self.lastName = `lastName`
        self.jobTitle = `jobTitle`
        self.phoneNumbers = `phoneNumbers`
        self.profileImage = `profileImage`
        self.site = `site`
        self.status = `status`
        self.type = `type`
    }
    open func mapping(map: Map) {
        `account` <- map["account"]
        `department` <- map["department"]
        `email` <- map["email"]
        `extensionNumber` <- map["extensionNumber"]
        `firstName` <- map["firstName"]
        `id` <- (map["id"], StringTransform())
        `lastName` <- map["lastName"]
        `jobTitle` <- map["jobTitle"]
        `phoneNumbers` <- map["phoneNumbers"]
        `profileImage` <- map["profileImage"]
        `site` <- map["site"]
        `status` <- map["status"]
        `type` <- map["type"]
    }
}
