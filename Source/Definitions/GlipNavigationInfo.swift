import Foundation
import ObjectMapper
open class GlipNavigationInfo: Mappable {
    /*
    Previous page token. To get previous page, user should pass one of returned token in next request and, in turn, required page will be returned with new tokens
    */
    open var `prevPageToken`: String?
    /*
    Next page token. To get next page, user should pass one of returned token in next request and, in turn, required page will be returned with new tokens
    */
    open var `nextPageToken`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(prevPageToken: String? = nil, nextPageToken: String? = nil) {
        self.init()
        self.prevPageToken = `prevPageToken`
        self.nextPageToken = `nextPageToken`
    }
    open func mapping(map: Map) {
        `prevPageToken` <- map["prevPageToken"]
        `nextPageToken` <- map["nextPageToken"]
    }
}
