import Foundation
import ObjectMapper
open class UserResponse: Mappable {
    /*
    user status
    */
    open var `active`: Bool?
    /*
    */
    open var `addresses`: [Address]?
    /*
    */
    open var `emails`: [Email]?
    /*
    external unique resource id defined by provisioning client
    */
    open var `externalId`: String?
    /*
    unique resource id defined by RingCentral
    */
    open var `id`: String?
    /*
    */
    open var `name`: Name?
    /*
    */
    open var `phoneNumbers`: [PhoneNumber]?
    /*
    */
    open var `photos`: [Photo]?
    /*
    */
    open var `schemas`: [String]?
    /*
    */
//    open var `urn:ietf:params:scim:schemas:extension:enterprise:2.0:User`: EnterpriseUser?
    /*
    MUST be same as work type email address
    */
    open var `userName`: String?
    /*
    */
    open var `meta`: Meta?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(active: Bool? = nil, addresses: [Address]? = nil, emails: [Email]? = nil, externalId: String? = nil, id: String? = nil, name: Name? = nil, phoneNumbers: [PhoneNumber]? = nil, photos: [Photo]? = nil, schemas: [String]? = nil, urn:ietf:params:scim:schemas:extension:enterprise:2.0:User: EnterpriseUser? = nil, userName: String? = nil, meta: Meta? = nil) {
        self.init()
        self.active = `active`
        self.addresses = `addresses`
        self.emails = `emails`
        self.externalId = `externalId`
        self.id = `id`
        self.name = `name`
        self.phoneNumbers = `phoneNumbers`
        self.photos = `photos`
        self.schemas = `schemas`
        self.urn:ietf:params:scim:schemas:extension:enterprise:2.0:User = `urn:ietf:params:scim:schemas:extension:enterprise:2.0:User`
        self.userName = `userName`
        self.meta = `meta`
    }
    open func mapping(map: Map) {
        `active` <- map["active"]
        `addresses` <- map["addresses"]
        `emails` <- map["emails"]
        `externalId` <- map["externalId"]
        `id` <- (map["id"], StringTransform())
        `name` <- map["name"]
        `phoneNumbers` <- map["phoneNumbers"]
        `photos` <- map["photos"]
        `schemas` <- map["schemas"]
        `urn:ietf:params:scim:schemas:extension:enterprise:2.0:User` <- map["urn:ietf:params:scim:schemas:extension:enterprise:2.0:User"]
        `userName` <- map["userName"]
        `meta` <- map["meta"]
    }
}
