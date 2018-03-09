import Foundation
import ObjectMapper
open class AcceptableLanguageTag: Mappable {
    /*
    */
    open var `tag`: String?
    /*
    */
    open var `primaryTag`: String?
    /*
    */
    open var `subTags`: String?
    /*
    */
    open var `quality`: Int?
    /*
    */
    open var `asLocale`: Locale?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(tag: String? = nil, primaryTag: String? = nil, subTags: String? = nil, quality: Int? = nil, asLocale: Locale? = nil) {
        self.init()
        self.tag = `tag`
        self.primaryTag = `primaryTag`
        self.subTags = `subTags`
        self.quality = `quality`
        self.asLocale = `asLocale`
    }
    open func mapping(map: Map) {
        `tag` <- map["tag"]
        `primaryTag` <- map["primaryTag"]
        `subTags` <- map["subTags"]
        `quality` <- map["quality"]
        `asLocale` <- map["asLocale"]
    }
}
