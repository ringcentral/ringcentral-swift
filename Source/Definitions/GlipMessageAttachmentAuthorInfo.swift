import Foundation
import ObjectMapper
open class GlipMessageAttachmentAuthorInfo: Mappable {
    /*
    The author name
    */
    open var `name`: String?
    /*
    Used to link the authors name
    */
    open var `uri`: String?
    /*
    A url to an image up to 82x82px that will display to the left of the author’s name
    */
    open var `iconUri`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(name: String? = nil, uri: String? = nil, iconUri: String? = nil) {
        self.init()
        self.name = `name`
        self.uri = `uri`
        self.iconUri = `iconUri`
    }
    open func mapping(map: Map) {
        `name` <- map["name"]
        `uri` <- map["uri"]
        `iconUri` <- map["iconUri"]
    }
}
