import Foundation
import ObjectMapper
open class ContactInfo: Mappable {
    /*
    For User extension type only. Extension user first name
    */
    open var `firstName`: String?
    /*
    For User extension type only. Extension user last name
    */
    open var `lastName`: String?
    /*
    Extension user company name
    */
    open var `company`: String?
    /*
    */
    open var `jobTitle`: String?
    /*
    Email of extension user
    */
    open var `email`: String?
    /*
    Extension user contact phone number in [E.164](https://www.itu.int/rec/T-REC-E.164-201011-I) (with '+' sign) format
    */
    open var `businessPhone`: String?
    /*
    Extension user mobile phone number in [E.164](https://www.itu.int/rec/T-REC-E.164-201011-I) (with '+' sign) format. For extension bulk assignment it should be a valid **non** Toll Free number
    */
    open var `mobilePhone`: String?
    /*
    Business address of extension user company
    */
    open var `businessAddress`: ContactBusinessAddressInfo?
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
    convenience public init(firstName: String? = nil, lastName: String? = nil, company: String? = nil, jobTitle: String? = nil, email: String? = nil, businessPhone: String? = nil, mobilePhone: String? = nil, businessAddress: ContactBusinessAddressInfo? = nil, emailAsLoginName: Bool? = nil, pronouncedName: PronouncedNameInfo? = nil, department: String? = nil) {
        self.init()
        self.firstName = `firstName`
        self.lastName = `lastName`
        self.company = `company`
        self.jobTitle = `jobTitle`
        self.email = `email`
        self.businessPhone = `businessPhone`
        self.mobilePhone = `mobilePhone`
        self.businessAddress = `businessAddress`
        self.emailAsLoginName = `emailAsLoginName`
        self.pronouncedName = `pronouncedName`
        self.department = `department`
    }
    open func mapping(map: Map) {
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `company` <- map["company"]
        `jobTitle` <- map["jobTitle"]
        `email` <- map["email"]
        `businessPhone` <- map["businessPhone"]
        `mobilePhone` <- map["mobilePhone"]
        `businessAddress` <- map["businessAddress"]
        `emailAsLoginName` <- map["emailAsLoginName"]
        `pronouncedName` <- map["pronouncedName"]
        `department` <- map["department"]
    }
}
