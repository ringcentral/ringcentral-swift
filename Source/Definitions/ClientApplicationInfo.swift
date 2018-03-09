import Foundation
import ObjectMapper
open class ClientApplicationInfo: Mappable {
    /*
    'True', if the server succeeded detecting application info, sufficient to return provisioning info
    */
    open var `detected`: Bool?
    /*
    The value of 'User-Agent' header, as it was passed in request
    */
    open var `userAgent`: String?
    /*
    Application identifier (from authorization session)
    */
    open var `appId`: String?
    /*
    Application name (from authorization session, but must match 'User-Agent')
    */
    open var `appName`: String?
    /*
    Application version (parsed from 'User-Agent')
    */
    open var `appVersion`: String?
    /*
    Application platform operation system (parsed from 'User-Agent': Windows, MacOS, Android, iOS
    */
    open var `appPlatform`: String?
    /*
    Application platform operation system version (parsed from 'User-Agent')
    */
    open var `appPlatformVersion`: String?
    /*
    Locale, parsed from 'Accept-Language'. Currently en-GB and en-US locales are supported. The default value is en-US
    */
    open var `locale`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(detected: Bool? = nil, userAgent: String? = nil, appId: String? = nil, appName: String? = nil, appVersion: String? = nil, appPlatform: String? = nil, appPlatformVersion: String? = nil, locale: String? = nil) {
        self.init()
        self.detected = `detected`
        self.userAgent = `userAgent`
        self.appId = `appId`
        self.appName = `appName`
        self.appVersion = `appVersion`
        self.appPlatform = `appPlatform`
        self.appPlatformVersion = `appPlatformVersion`
        self.locale = `locale`
    }
    open func mapping(map: Map) {
        `detected` <- map["detected"]
        `userAgent` <- map["userAgent"]
        `appId` <- map["appId"]
        `appName` <- map["appName"]
        `appVersion` <- map["appVersion"]
        `appPlatform` <- map["appPlatform"]
        `appPlatformVersion` <- map["appPlatformVersion"]
        `locale` <- map["locale"]
    }
}
