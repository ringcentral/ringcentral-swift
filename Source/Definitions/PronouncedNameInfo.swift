import Foundation
import ObjectMapper
open class PronouncedNameInfo: Mappable {
    /*
    Voice name typeDefault - default extension name; first name and last name specified in user profileTextToSpeech - custom text; user name spelled the way it sounds and specified by userRecorded - custom audio; user name recorded in user's own voice (supported only for extension retrieval) = ['Default', 'TextToSpeech', 'Recorded']
    */
    open var `type`: String?
    /*
    Custom text
    */
    open var `text`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(type: String? = nil, text: String? = nil) {
        self.init()
        self.type = `type`
        self.text = `text`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `text` <- map["text"]
    }
}
