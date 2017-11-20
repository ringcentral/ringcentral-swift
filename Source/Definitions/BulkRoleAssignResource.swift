import Foundation
import ObjectMapper
open class BulkRoleAssignResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `addedExtensionIds`: [String]?
    /*
    */
    open var `removedExtensionIds`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, addedExtensionIds: [String]? = nil, removedExtensionIds: [String]? = nil) {
        self.init()
        self.uri = `uri`
        self.addedExtensionIds = `addedExtensionIds`
        self.removedExtensionIds = `removedExtensionIds`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `addedExtensionIds` <- map["addedExtensionIds"]
        `removedExtensionIds` <- map["removedExtensionIds"]
    }
}
