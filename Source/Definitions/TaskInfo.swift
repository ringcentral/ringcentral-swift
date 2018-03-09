import Foundation
import ObjectMapper
open class TaskInfo: Mappable {
    /*
    Internal identifier of a task
    */
    open var `id`: String?
    /*
    Link to a task resource
    */
    open var `uri`: String?
    /*
    Device order status
    */
    open var `status`: String?
    /*
    Task creation time
    */
    open var `creationTime`: String?
    /*
    Time of task last modification
    */
    open var `lastModifiedTime`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, status: String? = nil, creationTime: String? = nil, lastModifiedTime: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.status = `status`
        self.creationTime = `creationTime`
        self.lastModifiedTime = `lastModifiedTime`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `status` <- map["status"]
        `creationTime` <- map["creationTime"]
        `lastModifiedTime` <- map["lastModifiedTime"]
    }
}
