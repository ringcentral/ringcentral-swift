import Foundation
import ObjectMapper
open class ContactInfoUpdateRequest: Mappable {
    /*
    For User extension type only. Extension user first name,
    */
    open var `firstName`: String?
    /*
    For User extension type only. Extension user last name,
    */
    open var `lastName`: String?
    /*
    Extension user company name
    */
    open var `company`: String?
    /*
    Email of extension user
    */
    open var `email`: String?
    /*
    Extension user contact phone number in E.164 format
    */
    open var `businessPhone`: String?
    /*
    */
    open var `businessAddress`: ContactAddressInfo?
    /*
    If 'True' then contact email is enabled as login name for this user. Please note that email should be unique in this case. The default value is 'False'
    */
    open var `emailAsLoginName`: Bool?
    /*
    */
    open var `pronouncedName`: PronouncedNameInfo?
    /*
    Extension user department, if any
    */
    open var `department`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(firstName: String? = nil, lastName: String? = nil, company: String? = nil, email: String? = nil, businessPhone: String? = nil, businessAddress: ContactAddressInfo? = nil, emailAsLoginName: Bool? = nil, pronouncedName: PronouncedNameInfo? = nil, department: String? = nil) {
        self.init()
        self.firstName = `firstName`
        self.lastName = `lastName`
        self.company = `company`
        self.email = `email`
        self.businessPhone = `businessPhone`
        self.businessAddress = `businessAddress`
        self.emailAsLoginName = `emailAsLoginName`
        self.pronouncedName = `pronouncedName`
        self.department = `department`
    }
    open func mapping(map: Map) {
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `company` <- map["company"]
        `email` <- map["email"]
        `businessPhone` <- map["businessPhone"]
        `businessAddress` <- map["businessAddress"]
        `emailAsLoginName` <- map["emailAsLoginName"]
        `pronouncedName` <- map["pronouncedName"]
        `department` <- map["department"]
    }
}
