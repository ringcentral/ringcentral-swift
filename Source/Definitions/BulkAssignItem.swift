import Foundation
import ObjectMapper
open class BulkAssignItem: Mappable {
    /*
    */
    open var `departmentId`: String?
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
    convenience public init(departmentId: String? = nil, addedExtensionIds: [String]? = nil, removedExtensionIds: [String]? = nil) {
        self.init()
        self.departmentId = `departmentId`
        self.addedExtensionIds = `addedExtensionIds`
        self.removedExtensionIds = `removedExtensionIds`
    }
    open func mapping(map: Map) {
        `departmentId` <- map["departmentId"]
        `addedExtensionIds` <- map["addedExtensionIds"]
        `removedExtensionIds` <- map["removedExtensionIds"]
    }
}
