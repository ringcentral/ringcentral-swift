import Foundation
import ObjectMapper
open class CompanyDirectoryProfileImageInfo: Mappable {
    /*
    Link to a profile image resource
    */
    open var `uri`: String?
    /*
    Internal identifier of an image
    */
    open var `etag`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, etag: String? = nil) {
        self.init()
        self.uri = `uri`
        self.etag = `etag`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `etag` <- map["etag"]
    }
}
