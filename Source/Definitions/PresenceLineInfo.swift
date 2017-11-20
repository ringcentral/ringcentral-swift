import Foundation
import ObjectMapper
open class PresenceLineInfo: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `extension`: PresenceExtensionInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, extension: PresenceExtensionInfo? = nil) {
        self.init()
        self.id = `id`
        self.extension = `extension`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `extension` <- map["extension"]
    }
}
