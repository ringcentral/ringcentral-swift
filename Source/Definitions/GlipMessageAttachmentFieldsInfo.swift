import Foundation
import ObjectMapper
open class GlipMessageAttachmentFieldsInfo: Mappable {
    /*
    Title for an individual field
    */
    open var `title`: String?
    /*
    Field Value (Supports Markdown)
    */
    open var `value`: String?
    /*
    A style used to flag fields that should span the width of the message, Defaults to 'Short' (Not full width)
    */
    open var `style`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(title: String? = nil, value: String? = nil, style: String? = nil) {
        self.init()
        self.title = `title`
        self.value = `value`
        self.style = `style`
    }
    open func mapping(map: Map) {
        `title` <- map["title"]
        `value` <- map["value"]
        `style` <- map["style"]
    }
}
