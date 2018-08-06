import Foundation
import ObjectMapper
open class GlipCreatePost: Mappable {
    /*
    Label of an activity type
    */
    open var `activity`: String?
    /*
    Title of a message. (Can be set for bot's messages only).
    */
    open var `title`: String?
    /*
    URI to an image to use as the icon for this message.
    */
    open var `iconUri`: String?
    /*
    Emoji to use as the icon for a message.
    */
    open var `iconEmoji`: String?
    /*
    Text of a post
    */
    open var `text`: String?
    /*
    List of attachments to be posted
    */
    open var `attachments`: [GlipMessageAttachmentInfoRequest]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(activity: String? = nil, title: String? = nil, iconUri: String? = nil, iconEmoji: String? = nil, text: String? = nil, attachments: [GlipMessageAttachmentInfoRequest]? = nil) {
        self.init()
        self.activity = `activity`
        self.title = `title`
        self.iconUri = `iconUri`
        self.iconEmoji = `iconEmoji`
        self.text = `text`
        self.attachments = `attachments`
    }
    open func mapping(map: Map) {
        `activity` <- map["activity"]
        `title` <- map["title"]
        `iconUri` <- map["iconUri"]
        `iconEmoji` <- map["iconEmoji"]
        `text` <- map["text"]
        `attachments` <- map["attachments"]
    }
}
