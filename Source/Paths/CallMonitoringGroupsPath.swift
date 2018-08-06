import Foundation
import ObjectMapper
import Alamofire
open class CallMonitoringGroupsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "call-monitoring-groups"
        }
    }
    open func `members`() -> MembersPath {
        return MembersPath(parent: self)
    }
    open func `bulkAssign`() -> BulkAssignPath {
        return BulkAssignPath(parent: self)
    }
    /*
    Returns call monitoring groups that can be filtered by some extension.
    */
    open func list(callback: @escaping (_ t: CallMonitoringGroups?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: CallMonitoringGroups?, error) in
            callback(t, error)
        }
    }
    /*
    Returns call monitoring groups that can be filtered by some extension.
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: CallMonitoringGroups?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: CallMonitoringGroups?, error) in
            callback(t, error)
        }
    }
    /*
    Returns call monitoring groups that can be filtered by some extension.
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: CallMonitoringGroups?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Indicates the page number to retrieve. Only positive number values are allowed
        */
        open var `page`: Int?
        /*
        Indicates the page size (number of items)
        */
        open var `perPage`: Int?
        /*
        Internal identifier of an extension that is a member of every group within the result
        */
        open var `memberExtensionId`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(page: Int? = nil, perPage: Int? = nil, memberExtensionId: String? = nil) {
            self.init()
            self.page = `page`
            self.perPage = `perPage`
            self.memberExtensionId = `memberExtensionId`
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `memberExtensionId` <- map["memberExtensionId"]
        }
    }
}
