import Foundation
import ObjectMapper
open class CompanyDirectoryContactInfo: Mappable {
    /*
    Internal identifier of an extension
    */
    open var `id`: String?
    /*
    Type of an extension
    */
    open var `type`: String?
    /*
    Status of an extension
    */
    open var `status`: String?
    /*
    User extension first name
    */
    open var `firstName`: String?
    /*
    User extension last name
    */
    open var `lastName`: String?
    /*
    Name of an extension
    */
    open var `name`: String?
    /*
    Department name of an extension
    */
    open var `department`: String?
    /*
    Email of an extension
    */
    open var `email`: String?
    /*
    Number of an extension
    */
    open var `extensionNumber`: String?
    /*
    Account data of an extension
    */
    open var `account`: CompanyDirectoryAccountInfo?
    /*
    Extension phone numbers information
    */
    open var `phoneNumbers`: [CompanyDirectoryPhoneNumberInfo]?
    /*
    Extension profile image information. Not returned if profile images are absent for an extension
    */
    open var `profileImage`: CompanyDirectoryProfileImageInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, type: String? = nil, status: String? = nil, firstName: String? = nil, lastName: String? = nil, name: String? = nil, department: String? = nil, email: String? = nil, extensionNumber: String? = nil, account: CompanyDirectoryAccountInfo? = nil, phoneNumbers: [CompanyDirectoryPhoneNumberInfo]? = nil, profileImage: CompanyDirectoryProfileImageInfo? = nil) {
        self.init()
        self.id = `id`
        self.type = `type`
        self.status = `status`
        self.firstName = `firstName`
        self.lastName = `lastName`
        self.name = `name`
        self.department = `department`
        self.email = `email`
        self.extensionNumber = `extensionNumber`
        self.account = `account`
        self.phoneNumbers = `phoneNumbers`
        self.profileImage = `profileImage`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `type` <- map["type"]
        `status` <- map["status"]
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `name` <- map["name"]
        `department` <- map["department"]
        `email` <- map["email"]
        `extensionNumber` <- map["extensionNumber"]
        `account` <- map["account"]
        `phoneNumbers` <- map["phoneNumbers"]
        `profileImage` <- map["profileImage"]
    }
}
