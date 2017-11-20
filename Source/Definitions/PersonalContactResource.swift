import Foundation
import ObjectMapper
open class PersonalContactResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `availability`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `firstName`: String?
    /*
    */
    open var `lastName`: String?
    /*
    */
    open var `middleName`: String?
    /*
    */
    open var `birthday`: String?
    /*
    */
    open var `notes`: String?
    /*
    */
    open var `webPage`: String?
    /*
    */
    open var `company`: String?
    /*
    */
    open var `jobTitle`: String?
    /*
    */
    open var `nickName`: String?
    /*
    */
    open var `email`: String?
    /*
    */
    open var `email2`: String?
    /*
    */
    open var `email3`: String?
    /*
    */
    open var `homeAddress`: ContactAddressInfo?
    /*
    */
    open var `otherAddress`: ContactAddressInfo?
    /*
    */
    open var `homePhone`: String?
    /*
    */
    open var `homePhone2`: String?
    /*
    */
    open var `mobilePhone`: String?
    /*
    */
    open var `businessPhone`: String?
    /*
    */
    open var `callbackPhone`: String?
    /*
    */
    open var `carPhone`: String?
    /*
    */
    open var `companyPhone`: String?
    /*
    */
    open var `otherPhone`: String?
    /*
    */
    open var `businessFax`: String?
    /*
    */
    open var `otherFax`: String?
    /*
    */
    open var `businessAddress`: ContactAddressInfo?
    /*
    */
    open var `assistantPhone`: String?
    /*
    */
    open var `businessPhone2`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, availability: String? = nil, id: String? = nil, firstName: String? = nil, lastName: String? = nil, middleName: String? = nil, birthday: String? = nil, notes: String? = nil, webPage: String? = nil, company: String? = nil, jobTitle: String? = nil, nickName: String? = nil, email: String? = nil, email2: String? = nil, email3: String? = nil, homeAddress: ContactAddressInfo? = nil, otherAddress: ContactAddressInfo? = nil, homePhone: String? = nil, homePhone2: String? = nil, mobilePhone: String? = nil, businessPhone: String? = nil, callbackPhone: String? = nil, carPhone: String? = nil, companyPhone: String? = nil, otherPhone: String? = nil, businessFax: String? = nil, otherFax: String? = nil, businessAddress: ContactAddressInfo? = nil, assistantPhone: String? = nil, businessPhone2: String? = nil) {
        self.init()
        self.uri = `uri`
        self.availability = `availability`
        self.id = `id`
        self.firstName = `firstName`
        self.lastName = `lastName`
        self.middleName = `middleName`
        self.birthday = `birthday`
        self.notes = `notes`
        self.webPage = `webPage`
        self.company = `company`
        self.jobTitle = `jobTitle`
        self.nickName = `nickName`
        self.email = `email`
        self.email2 = `email2`
        self.email3 = `email3`
        self.homeAddress = `homeAddress`
        self.otherAddress = `otherAddress`
        self.homePhone = `homePhone`
        self.homePhone2 = `homePhone2`
        self.mobilePhone = `mobilePhone`
        self.businessPhone = `businessPhone`
        self.callbackPhone = `callbackPhone`
        self.carPhone = `carPhone`
        self.companyPhone = `companyPhone`
        self.otherPhone = `otherPhone`
        self.businessFax = `businessFax`
        self.otherFax = `otherFax`
        self.businessAddress = `businessAddress`
        self.assistantPhone = `assistantPhone`
        self.businessPhone2 = `businessPhone2`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `availability` <- map["availability"]
        `id` <- (map["id"], StringTransform())
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `middleName` <- map["middleName"]
        `birthday` <- map["birthday"]
        `notes` <- map["notes"]
        `webPage` <- map["webPage"]
        `company` <- map["company"]
        `jobTitle` <- map["jobTitle"]
        `nickName` <- map["nickName"]
        `email` <- map["email"]
        `email2` <- map["email2"]
        `email3` <- map["email3"]
        `homeAddress` <- map["homeAddress"]
        `otherAddress` <- map["otherAddress"]
        `homePhone` <- map["homePhone"]
        `homePhone2` <- map["homePhone2"]
        `mobilePhone` <- map["mobilePhone"]
        `businessPhone` <- map["businessPhone"]
        `callbackPhone` <- map["callbackPhone"]
        `carPhone` <- map["carPhone"]
        `companyPhone` <- map["companyPhone"]
        `otherPhone` <- map["otherPhone"]
        `businessFax` <- map["businessFax"]
        `otherFax` <- map["otherFax"]
        `businessAddress` <- map["businessAddress"]
        `assistantPhone` <- map["assistantPhone"]
        `businessPhone2` <- map["businessPhone2"]
    }
}
