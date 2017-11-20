import Foundation
import ObjectMapper
open class PresenceLineResource: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `extension`: InlinedExtensionResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, extension: InlinedExtensionResource? = nil) {
        self.init()
        self.id = `id`
        self.extension = `extension`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `extension` <- map["extension"]
    }
}
