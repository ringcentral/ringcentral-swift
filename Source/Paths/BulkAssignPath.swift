import Foundation
import ObjectMapper
import Alamofire
open class BulkAssignPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "bulk-assign"
        }
    }
    // Edit Group Members
    open func post(callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GlipGroupInfo?, error) in
            callback(t, error)
        }
    }
    // Edit Group Members
    open func post(parameters: Parameters, callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: GlipGroupInfo?, error) in
            callback(t, error)
        }
    }
    // Edit Group Members
    open func post(parameters: PostParameters, callback: @escaping (_ t: GlipGroupInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        // List of users to be added to the team
        open var `addedPersonIds`: [String]?
        // List of user email addresses to be added to the team (i.e. as guests)
        open var `addedPersonEmails`: [String]?
        // List of users to be removed from the team
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
}
