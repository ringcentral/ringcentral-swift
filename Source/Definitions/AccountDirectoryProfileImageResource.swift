import Foundation
import ObjectMapper
open class AccountDirectoryProfileImageResource: Mappable {
    /*
    */
    open var `etag`: String?
    /*
    */
    open var `uri`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(etag: String? = nil, uri: String? = nil) {
        self.init()
        self.etag = `etag`
        self.uri = `uri`
    }
    open func mapping(map: Map) {
        `etag` <- map["etag"]
        `uri` <- map["uri"]
    }
}
