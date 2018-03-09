import Foundation
import ObjectMapper
open class ClientResource: Mappable {
    /*
    */
    open var `detected`: Bool?
    /*
    */
    open var `userAgent`: String?
    /*
    */
    open var `appId`: String?
    /*
    */
    open var `appName`: String?
    /*
    */
    open var `appKey`: String?
    /*
    */
    open var `appVersion`: String?
    /*
    */
    open var `locale`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(detected: Bool? = nil, userAgent: String? = nil, appId: String? = nil, appName: String? = nil, appKey: String? = nil, appVersion: String? = nil, locale: String? = nil) {
        self.init()
        self.detected = `detected`
        self.userAgent = `userAgent`
        self.appId = `appId`
        self.appName = `appName`
        self.appKey = `appKey`
        self.appVersion = `appVersion`
        self.locale = `locale`
    }
    open func mapping(map: Map) {
        `detected` <- map["detected"]
        `userAgent` <- map["userAgent"]
        `appId` <- map["appId"]
        `appName` <- map["appName"]
        `appKey` <- map["appKey"]
        `appVersion` <- map["appVersion"]
        `locale` <- map["locale"]
    }
}
