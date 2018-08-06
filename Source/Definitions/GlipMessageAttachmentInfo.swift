import Foundation
import ObjectMapper
open class GlipMessageAttachmentInfo: Mappable {
    /*
    Internal identifier of an attachment
    */
    open var `id`: String?
    /*
    Type of an attachment
    */
    open var `type`: String?
    /*
    A string of default text that will be rendered in the case that the client does not support Interactive Messages
    */
    open var `fallback`: String?
    /*
    A Hex color code that determines the color of the side border of the Interactive Message
    */
    open var `color`: String?
    /*
    A pretext to the message
    */
    open var `intro`: String?
    /*
    Information about the author
    */
    open var `author`: GlipMessageAttachmentAuthorInfo?
    /*
    Message title
    */
    open var `title`: String?
    /*
    A large string field (up to 1000 chars) to be displayed as the body of a message (Supports GlipDown)
    */
    open var `text`: String?
    /*
    url used to display a single image at the bottom of a message
    */
    open var `imageUri`: String?
    /*
    url used to display a thumbnail to the right of a message (82x82)
    */
    open var `thumbnailUri`: String?
    /*
    Information on navigation
    */
    open var `fields`: [GlipMessageAttachmentFieldsInfo]?
    /*
    Message Footer
    */
    open var `footnote`: GlipMessageAttachmentFootnoteInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, type: String? = nil, fallback: String? = nil, color: String? = nil, intro: String? = nil, author: GlipMessageAttachmentAuthorInfo? = nil, title: String? = nil, text: String? = nil, imageUri: String? = nil, thumbnailUri: String? = nil, fields: [GlipMessageAttachmentFieldsInfo]? = nil, footnote: GlipMessageAttachmentFootnoteInfo? = nil) {
        self.init()
        self.id = `id`
        self.type = `type`
        self.fallback = `fallback`
        self.color = `color`
        self.intro = `intro`
        self.author = `author`
        self.title = `title`
        self.text = `text`
        self.imageUri = `imageUri`
        self.thumbnailUri = `thumbnailUri`
        self.fields = `fields`
        self.footnote = `footnote`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `type` <- map["type"]
        `fallback` <- map["fallback"]
        `color` <- map["color"]
        `intro` <- map["intro"]
        `author` <- map["author"]
        `title` <- map["title"]
        `text` <- map["text"]
        `imageUri` <- map["imageUri"]
        `thumbnailUri` <- map["thumbnailUri"]
        `fields` <- map["fields"]
        `footnote` <- map["footnote"]
    }
}
