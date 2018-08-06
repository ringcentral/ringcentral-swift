import Foundation
import ObjectMapper
open class EditGroupRequest: Mappable {
    /*
    List of users to be added to a team
    */
    open var `addedPersonIds`: [String]?
    /*
    List of user email addresses to be added to the team (i.e. as guests)
    */
    open var `addedPersonEmails`: [String]?
    /*
    List of users to be removed from the team
    */
    open var `removedPersonIds`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(addedPersonIds: [String]? = nil, addedPersonEmails: [String]? = nil, removedPersonIds: [String]? = nil) {
        self.init()
        self.addedPersonIds = `addedPersonIds`
        self.addedPersonEmails = `addedPersonEmails`
        self.removedPersonIds = `removedPersonIds`
    }
    open func mapping(map: Map) {
        `addedPersonIds` <- map["addedPersonIds"]
        `addedPersonEmails` <- map["addedPersonEmails"]
        `removedPersonIds` <- map["removedPersonIds"]
    }
}
