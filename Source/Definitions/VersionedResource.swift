import Foundation
import ObjectMapper
open class VersionedResource: Mappable {
    /*
    */
    open var `uri`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil) {
        self.init()
        self.uri = `uri`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
    }
}
