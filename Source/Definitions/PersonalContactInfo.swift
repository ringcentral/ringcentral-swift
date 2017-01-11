import Foundation
import ObjectMapper
open class PersonalContactInfo: Mappable {
    // Standard resource properties ID
    open var `id`: String?
    // Canonical URI
    open var `url`: String?
    // This property has a special meaning only on Address Book Sync (e.g. a contact can be 'Deleted'). For simple contact list reading it has always the default value - 'Alive'
    open var `availability`: String?
    // First name of a personal contact
    open var `firstName`: String?
    // Last name of a personal contact
    open var `lastName`: String?
    // Middle name of a personal contact
    open var `middleName`: String?
    // Nick name of a personal contact
    open var `nickName`: String?
    // Company name of a personal contact
    open var `company`: String?
    // Job title of a personal contact
    open var `jobTitle`: String?
    // Home phone of a personal contact
    open var `homePhone`: String?
    // The 2-d home phone of a personal contact
    open var `homePhone2`: String?
    // Business phone of a personal contact
    open var `businessPhone`: String?
    // The 2-d business phone of a personal contact
    open var `businessPhone2`: String?
    // Mobile phone of a personal contact
    open var `mobilePhone`: String?
    // Business fax of a personal contact
    open var `businessFax`: String?
    // Company phone of a personal contact
    open var `companyPhone`: String?
    // Assistant phone of a personal contact
    open var `assistantPhone`: String?
    // Car phone of a personal contact
    open var `carPhone`: String?
    // Other phone of a personal contact
    open var `otherPhone`: String?
    // Other fax of a personal contact
    open var `otherFax`: String?
    // Callback phone of a personal contact
    open var `callbackPhone`: String?
    // Email of a personal contact
    open var `email`: String?
    // The 2-d email of a personal contact
    open var `email2`: String?
    // The 3-d email of a personal contact
    open var `email3`: String?
    // Home address of a personal contact
    open var `homeAddress`: ContactAddressInfo?
    // Business address of a personal contact
    open var `businessAddress`: ContactAddressInfo?
    // Other address of a personal contact
    open var `otherAddress`: ContactAddressInfo?
    // Date of birth of a personal contact in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `birthday`: String?
    // Web page of a personal contact
    open var `webPage`: String?
    // Notes of a personal contact
    open var `notes`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, url: String? = nil, availability: String? = nil, firstName: String? = nil, lastName: String? = nil, middleName: String? = nil, nickName: String? = nil, company: String? = nil, jobTitle: String? = nil, homePhone: String? = nil, homePhone2: String? = nil, businessPhone: String? = nil, businessPhone2: String? = nil, mobilePhone: String? = nil, businessFax: String? = nil, companyPhone: String? = nil, assistantPhone: String? = nil, carPhone: String? = nil, otherPhone: String? = nil, otherFax: String? = nil, callbackPhone: String? = nil, email: String? = nil, email2: String? = nil, email3: String? = nil, homeAddress: ContactAddressInfo? = nil, businessAddress: ContactAddressInfo? = nil, otherAddress: ContactAddressInfo? = nil, birthday: String? = nil, webPage: String? = nil, notes: String? = nil) {
        self.init()
        self.id = `id`
        self.url = `url`
        self.availability = `availability`
        self.firstName = `firstName`
        self.lastName = `lastName`
        self.middleName = `middleName`
        self.nickName = `nickName`
        self.company = `company`
        self.jobTitle = `jobTitle`
        self.homePhone = `homePhone`
        self.homePhone2 = `homePhone2`
        self.businessPhone = `businessPhone`
        self.businessPhone2 = `businessPhone2`
        self.mobilePhone = `mobilePhone`
        self.businessFax = `businessFax`
        self.companyPhone = `companyPhone`
        self.assistantPhone = `assistantPhone`
        self.carPhone = `carPhone`
        self.otherPhone = `otherPhone`
        self.otherFax = `otherFax`
        self.callbackPhone = `callbackPhone`
        self.email = `email`
        self.email2 = `email2`
        self.email3 = `email3`
        self.homeAddress = `homeAddress`
        self.businessAddress = `businessAddress`
        self.otherAddress = `otherAddress`
        self.birthday = `birthday`
        self.webPage = `webPage`
        self.notes = `notes`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `url` <- map["url"]
        `availability` <- map["availability"]
        `firstName` <- map["firstName"]
        `lastName` <- map["lastName"]
        `middleName` <- map["middleName"]
        `nickName` <- map["nickName"]
        `company` <- map["company"]
        `jobTitle` <- map["jobTitle"]
        `homePhone` <- map["homePhone"]
        `homePhone2` <- map["homePhone2"]
        `businessPhone` <- map["businessPhone"]
        `businessPhone2` <- map["businessPhone2"]
        `mobilePhone` <- map["mobilePhone"]
        `businessFax` <- map["businessFax"]
        `companyPhone` <- map["companyPhone"]
        `assistantPhone` <- map["assistantPhone"]
        `carPhone` <- map["carPhone"]
        `otherPhone` <- map["otherPhone"]
        `otherFax` <- map["otherFax"]
        `callbackPhone` <- map["callbackPhone"]
        `email` <- map["email"]
        `email2` <- map["email2"]
        `email3` <- map["email3"]
        `homeAddress` <- map["homeAddress"]
        `businessAddress` <- map["businessAddress"]
        `otherAddress` <- map["otherAddress"]
        `birthday` <- map["birthday"]
        `webPage` <- map["webPage"]
        `notes` <- map["notes"]
    }
}
