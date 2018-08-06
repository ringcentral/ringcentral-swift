import Foundation
import ObjectMapper
open class GlipMessageAttachmentFootnoteInfo: Mappable {
    /*
    A string used to be displayed as the body of the footer.
    */
    open var `text`: String?
    /*
    A URL used to display a 32x32px icon to the left of the footer
    */
    open var `iconUri`: String?
    /*
    A Unix timestamp to be displayed to the right of the footer (prettified)
    */
    open var `time`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(text: String? = nil, iconUri: String? = nil, time: String? = nil) {
        self.init()
        self.text = `text`
        self.iconUri = `iconUri`
        self.time = `time`
    }
    open func mapping(map: Map) {
        `text` <- map["text"]
        `iconUri` <- map["iconUri"]
        `time` <- map["time"]
    }
}
