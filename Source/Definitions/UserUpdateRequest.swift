import Foundation
import ObjectMapper
open class UserUpdateRequest: Mappable {
    /*
    Specification links
    */
    open var `schemas`: [String]?
    /*
    User name
    */
    open var `name`: NameInfoRequest?
    /*
    User mailbox
    */
    open var `userName`: String?
    /*
    User email addresses
    */
    open var `emails`: [EmailInfoRequest]?
    /*
    Status of a user
    */
    open var `active`: Bool?
    /*
    User phone numbers
    */
    open var `phoneNumbers`: [PhoneNumberInfoRequest]?
    /*
    External identifier of a user
    */
    open var `externalId`: String?
    /*
    User addresses
    */
    open var `addresses`: AddressInfoRequest?
    /*
    Internal identifier of a user
    */
    open var `id`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(schemas: [String]? = nil, name: NameInfoRequest? = nil, userName: String? = nil, emails: [EmailInfoRequest]? = nil, active: Bool? = nil, phoneNumbers: [PhoneNumberInfoRequest]? = nil, externalId: String? = nil, addresses: AddressInfoRequest? = nil, id: String? = nil) {
        self.init()
        self.schemas = `schemas`
        self.name = `name`
        self.userName = `userName`
        self.emails = `emails`
        self.active = `active`
        self.phoneNumbers = `phoneNumbers`
        self.externalId = `externalId`
        self.addresses = `addresses`
        self.id = `id`
    }
    open func mapping(map: Map) {
        `schemas` <- map["schemas"]
        `name` <- map["name"]
        `userName` <- map["userName"]
        `emails` <- map["emails"]
        `active` <- map["active"]
        `phoneNumbers` <- map["phoneNumbers"]
        `externalId` <- map["externalId"]
        `addresses` <- map["addresses"]
        `id` <- (map["id"], StringTransform())
    }
}
