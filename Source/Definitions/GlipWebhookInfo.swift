import Foundation
import ObjectMapper
open class GlipWebhookInfo: Mappable {
    /*
    ID of the webhook
    */
    open var `id`: String?
    /*
    ID of user whe created webhook
    */
    open var `creatorId`: String?
    /*
    IDs of groups where webhook has been created
    */
    open var `groupsId`: [String]?
    /*
    Webhook creation time in ISO 8601 format
    */
    open var `creationTime`: String?
    /*
    Webhook last update time in ISO 8601 format
    */
    open var `lastModifiedTime`: String?
    /*
    Public url to send webhook's payload
    */
    open var `uri`: String?
    /*
    Current status of the webhook, one of 'Active', 'Suspended' or 'Deleted'
    */
    open var `status`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, creatorId: String? = nil, groupsId: [String]? = nil, creationTime: String? = nil, lastModifiedTime: String? = nil, uri: String? = nil, status: String? = nil) {
        self.init()
        self.id = `id`
        self.creatorId = `creatorId`
        self.groupsId = `groupsId`
        self.creationTime = `creationTime`
        self.lastModifiedTime = `lastModifiedTime`
        self.uri = `uri`
        self.status = `status`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `creatorId` <- map["creatorId"]
        `groupsId` <- map["groupsId"]
        `creationTime` <- map["creationTime"]
        `lastModifiedTime` <- map["lastModifiedTime"]
        `uri` <- map["uri"]
        `status` <- map["status"]
    }
}
