import Foundation
import ObjectMapper
open class ProfileImageResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `etag`: String?
    /*
    */
    open var `contentType`: String?
    /*
    */
    open var `lastModified`: String?
    /*
    */
    open var `scales`: [ScaledProfileImageResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, etag: String? = nil, contentType: String? = nil, lastModified: String? = nil, scales: [ScaledProfileImageResource]? = nil) {
        self.init()
        self.uri = `uri`
        self.etag = `etag`
        self.contentType = `contentType`
        self.lastModified = `lastModified`
        self.scales = `scales`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `etag` <- map["etag"]
        `contentType` <- map["contentType"]
        `lastModified` <- map["lastModified"]
        `scales` <- map["scales"]
    }
}
