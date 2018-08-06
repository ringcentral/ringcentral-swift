import Foundation
import ObjectMapper
open class ContactDirectoryEvent: Mappable {
    /*
    Internal identifier of an extension
    */
    open var `id`: String?
    /*
    Type of change
    */
    open var `eventType`: String?
    /*
    Extension Type
    */
    open var `type`: String?
    /*
    Status of an extension
    */
    open var `status`: String?
    /*
    First name of an extension user
    */
    open var `firstName`: String?
    /*
    Last name of an extension user
    */
    open var `lastName`: String?
    /*
    Department Name
    */
    open var `department`: String?
    /*
    Email of an extension user
    */
    open var `email`: String?
    /*
    Extension number
    */
    open var `extensionNumber`: String?
    /*
    Account data of an extension
    */
    open var `account`: CompanyDirectoryAccountInfo?
    /*
    Extension phone number information
    */
    open var `phoneNumbers`: CompanyDirectoryPhoneNumberInfo?
    /*
    Site Data
    */
    open var `site`: SiteInfo?
    /*
    Extension profile image information. Not returned if profile images are absent for an extension
    */
    open var `profileImage`: CompanyDirectoryProfileImageInfo?
    /*
    Internal identifier of a subscription owner extension
    */
    open var `ownerId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, eventType: String? = nil, type: String? = nil, status: String? = nil, firstName: String? = nil, lastName: String? = nil, department: String? = nil, email: String? = nil, extensionNumber: String? = nil, account: CompanyDirectoryAccountInfo? = nil, phoneNumbers: CompanyDirectoryPhoneNumberInfo? = nil, site: SiteInfo? = nil, profileImage: CompanyDirectoryProfileImageInfo? = nil, ownerId: String? = nil) {
        self.init()
        self.id = `id`
        self.eventType = `eventType`
        self.type = `type`
        self.status = `status`
        self.firstName = `firstName`
        self.lastName = `lastName`
        self.department = `department`
        self.email = `email`
        self.extensionNumber = `extensionNumber`
        self.account = `account`
        self.phoneNumbers = `phoneNumbers`
        self.site = `site`
        self.profileImage = `profileImage`
        self.ownerId = `ownerId`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `eventType` <- map["eventType"]
        `type` <- map["type"]
        `status` <- map["status"]
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `department` <- map["department"]
        `email` <- map["email"]
        `extensionNumber` <- map["extensionNumber"]
        `account` <- map["account"]
        `phoneNumbers` <- map["phoneNumbers"]
        `site` <- map["site"]
        `profileImage` <- map["profileImage"]
        `ownerId` <- map["ownerId"]
    }
}
