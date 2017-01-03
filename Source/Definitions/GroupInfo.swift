import Foundation
import ObjectMapper
open class GroupInfo: Definition {
    // Internal identifier of a group
    open var `id`: String?
    // Canonical URI of a group
    open var `uri`: String?
    // Amount of contacts in a group
    open var `contactsCount`: Int?
    // Name of a group
    open var `groupName`: String?
    // Notes for a group
    open var `notes`: String?
    convenience public init(id: String? = nil, uri: String? = nil, contactsCount: Int? = nil, groupName: String? = nil, notes: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.contactsCount = `contactsCount`
        self.groupName = `groupName`
        self.notes = `notes`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `contactsCount` <- map["contactsCount"]
        `groupName` <- map["groupName"]
        `notes` <- map["notes"]
    }
}
