import Foundation
import ObjectMapper
open class EditParkLocationRequest: Mappable {
    /*
    List of users that will be allowed to park/unpark calls using the specified park location
    */
    open var `addedUserIds`: [String]?
    /*
    List of users that will be unallowed to park/unpark calls using the specified park location
    */
    open var `removedUserIds`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(addedUserIds: [String]? = nil, removedUserIds: [String]? = nil) {
        self.init()
        self.addedUserIds = `addedUserIds`
        self.removedUserIds = `removedUserIds`
    }
    open func mapping(map: Map) {
        `addedUserIds` <- map["addedUserIds"]
        `removedUserIds` <- map["removedUserIds"]
    }
}
