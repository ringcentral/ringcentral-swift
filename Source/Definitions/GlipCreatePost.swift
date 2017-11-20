import Foundation
import ObjectMapper
open class GlipCreatePost: Mappable {
    /*
    Internal identifier of a group to send post to
    */
    open var `groupId`: String?
    /*
    Text of a post, the maximum is 10000 characters
    */
    open var `text`: String?
    /*
    List of attachments to be posted
    */
    open var `attachments`: [GlipAttachmentInfoRequest]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(groupId: String? = nil, text: String? = nil, attachments: [GlipAttachmentInfoRequest]? = nil) {
        self.init()
        self.groupId = `groupId`
        self.text = `text`
        self.attachments = `attachments`
    }
    open func mapping(map: Map) {
        `groupId` <- map["groupId"]
        `text` <- map["text"]
        `attachments` <- map["attachments"]
    }
}
