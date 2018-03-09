import Foundation
import ObjectMapper
open class Page: Mappable {
    /*
    Canonical URI for the page
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
