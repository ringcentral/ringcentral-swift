import Foundation
import ObjectMapper
open class ProfileImageInfo: Mappable {
    /*
    Link to a profile image. If an image is not uploaded for an extension, only uri is returned
    */
    open var `uri`: String?
    /*
    Identifier of an image
    */
    open var `etag`: String?
    /*
    The datetime when an image was last updated in ISO 8601 format, for example 2016-03-10T18:07:52.534Z
    */
    open var `lastModified`: String?
    /*
    The type of an image
    */
    open var `contentType`: String?
    /*
    List of URIs to profile images in different dimensions
    */
    open var `scales`: [ProfileImageInfoURI]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, etag: String? = nil, lastModified: String? = nil, contentType: String? = nil, scales: [ProfileImageInfoURI]? = nil) {
        self.init()
        self.uri = `uri`
        self.etag = `etag`
        self.lastModified = `lastModified`
        self.contentType = `contentType`
        self.scales = `scales`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `etag` <- map["etag"]
        `lastModified` <- map["lastModified"]
        `contentType` <- map["contentType"]
        `scales` <- map["scales"]
    }
}
