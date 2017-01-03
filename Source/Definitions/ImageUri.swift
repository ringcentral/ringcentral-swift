import Foundation
import ObjectMapper
open class ImageUri: Definition {
    // Link to an image.
    open var `uri`: String?
    convenience public init(uri: String? = nil) {
        self.init()
        self.uri = `uri`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `uri` <- map["uri"]
    }
}
