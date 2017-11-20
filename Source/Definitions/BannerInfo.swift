import Foundation
import ObjectMapper
open class BannerInfo: Mappable {
    /*
    Type of a banner
    */
    open var `bannerType`: String?
    /*
    Custom text description of a banner
    */
    open var `description`: String?
    /*
    HTML formatted message content
    */
    open var `content`: String?
    /*
    Datetime of message expiration in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    */
    open var `expirationDate`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(bannerType: String? = nil, description: String? = nil, content: String? = nil, expirationDate: String? = nil) {
        self.init()
        self.bannerType = `bannerType`
        self.description = `description`
        self.content = `content`
        self.expirationDate = `expirationDate`
    }
    open func mapping(map: Map) {
        `bannerType` <- map["bannerType"]
        `description` <- map["description"]
        `content` <- map["content"]
        `expirationDate` <- map["expirationDate"]
    }
}
