import Foundation
import ObjectMapper
open class GroupResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `contacts`: ResourceLink?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `notes`: String?
    /*
    */
    open var `groupName`: String?
    /*
    */
    open var `contactsCount`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, contacts: ResourceLink? = nil, id: String? = nil, notes: String? = nil, groupName: String? = nil, contactsCount: Int? = nil) {
        self.init()
        self.uri = `uri`
        self.contacts = `contacts`
        self.id = `id`
        self.notes = `notes`
        self.groupName = `groupName`
        self.contactsCount = `contactsCount`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `contacts` <- map["contacts"]
        `id` <- (map["id"], StringTransform())
        `notes` <- map["notes"]
        `groupName` <- map["groupName"]
        `contactsCount` <- map["contactsCount"]
    }
}
