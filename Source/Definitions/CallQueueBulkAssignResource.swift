import Foundation
import ObjectMapper
open class CallQueueBulkAssignResource: Mappable {
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
    convenience public init(addedExtensionIds: [String]? = nil, removedExtensionIds: [String]? = nil) {
        self.init()
        self.addedExtensionIds = `addedExtensionIds`
        self.removedExtensionIds = `removedExtensionIds`
    }
    open func mapping(map: Map) {
        `addedExtensionIds` <- map["addedExtensionIds"]
        `removedExtensionIds` <- map["removedExtensionIds"]
    }
}
