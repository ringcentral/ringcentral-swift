import Foundation
import ObjectMapper
open class UserInfo: Mappable {
    /*
    Specification links
    */
    open var `schemas`: [String]?
    /*
    Internal identifier of a user
    */
    open var `id`: String?
    /*
    External identifier of a user
    */
    open var `externalId`: String?
    /*
    User metadata
    */
    open var `meta`: MetaInfo?
    /*
    User mailbox
    */
    open var `userName`: String?
    /*
    User name
    */
    open var `name`: NameInfo?
    /*
    Status of a user
    */
    open var `active`: Bool?
    /*
    User email addresses
    */
    open var `emails`: [EmailInfo]?
    /*
    User phone numbers
    */
    open var `phoneNumbers`: [PhoneNumberInfo]?
    /*
    User addresses
    */
    open var `addresses`: [AddressInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(schemas: [String]? = nil, id: String? = nil, externalId: String? = nil, meta: MetaInfo? = nil, userName: String? = nil, name: NameInfo? = nil, active: Bool? = nil, emails: [EmailInfo]? = nil, phoneNumbers: [PhoneNumberInfo]? = nil, addresses: [AddressInfo]? = nil) {
        self.init()
        self.schemas = `schemas`
        self.id = `id`
        self.externalId = `externalId`
        self.meta = `meta`
        self.userName = `userName`
        self.name = `name`
        self.active = `active`
        self.emails = `emails`
        self.phoneNumbers = `phoneNumbers`
        self.addresses = `addresses`
    }
    open func mapping(map: Map) {
        `schemas` <- map["schemas"]
        `id` <- (map["id"], StringTransform())
        `externalId` <- map["externalId"]
        `meta` <- map["meta"]
        `userName` <- map["userName"]
        `name` <- map["name"]
        `active` <- map["active"]
        `emails` <- map["emails"]
        `phoneNumbers` <- map["phoneNumbers"]
        `addresses` <- map["addresses"]
    }
}
