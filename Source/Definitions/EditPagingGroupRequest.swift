import Foundation
import ObjectMapper
open class EditPagingGroupRequest: Mappable {
    /*
    List of users that will be allowed to page a group specified
    */
    open var `addedUserIds`: [String]?
    /*
    List of users that will be unallowed to page a group specified
    */
    open var `removedUserIds`: [String]?
    /*
    List of account devices that will be assigned to a paging group specified
    */
    open var `addedDeviceIds`: [String]?
    /*
    List of account devices that will be unassigned from a paging group specified
    */
    open var `removedDeviceIds`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(addedUserIds: [String]? = nil, removedUserIds: [String]? = nil, addedDeviceIds: [String]? = nil, removedDeviceIds: [String]? = nil) {
        self.init()
        self.addedUserIds = `addedUserIds`
        self.removedUserIds = `removedUserIds`
        self.addedDeviceIds = `addedDeviceIds`
        self.removedDeviceIds = `removedDeviceIds`
    }
    open func mapping(map: Map) {
        `addedUserIds` <- map["addedUserIds"]
        `removedUserIds` <- map["removedUserIds"]
        `addedDeviceIds` <- map["addedDeviceIds"]
        `removedDeviceIds` <- map["removedDeviceIds"]
    }
}
