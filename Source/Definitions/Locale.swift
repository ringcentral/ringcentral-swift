import Foundation
import ObjectMapper
open class Locale: Mappable {
    /*
    */
    open var `language`: String?
    /*
    */
    open var `country`: String?
    /*
    */
    open var `displayCountry`: String?
    /*
    */
    open var `displayLanguage`: String?
    /*
    */
    open var `displayName`: String?
    /*
    */
    open var `displayScript`: String?
    /*
    */
    open var `displayVariant`: String?
    /*
    */
    open var `extensionKeys`: [String]?
    /*
    */
    open var `iso3Country`: String?
    /*
    */
    open var `iso3Language`: String?
    /*
    */
    open var `script`: String?
    /*
    */
    open var `unicodeLocaleAttributes`: [String]?
    /*
    */
    open var `unicodeLocaleKeys`: [String]?
    /*
    */
    open var `variant`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(language: String? = nil, country: String? = nil, displayCountry: String? = nil, displayLanguage: String? = nil, displayName: String? = nil, displayScript: String? = nil, displayVariant: String? = nil, extensionKeys: [String]? = nil, iso3Country: String? = nil, iso3Language: String? = nil, script: String? = nil, unicodeLocaleAttributes: [String]? = nil, unicodeLocaleKeys: [String]? = nil, variant: String? = nil) {
        self.init()
        self.language = `language`
        self.country = `country`
        self.displayCountry = `displayCountry`
        self.displayLanguage = `displayLanguage`
        self.displayName = `displayName`
        self.displayScript = `displayScript`
        self.displayVariant = `displayVariant`
        self.extensionKeys = `extensionKeys`
        self.iso3Country = `iso3Country`
        self.iso3Language = `iso3Language`
        self.script = `script`
        self.unicodeLocaleAttributes = `unicodeLocaleAttributes`
        self.unicodeLocaleKeys = `unicodeLocaleKeys`
        self.variant = `variant`
    }
    open func mapping(map: Map) {
        `language` <- map["language"]
        `country` <- map["country"]
        `displayCountry` <- map["displayCountry"]
        `displayLanguage` <- map["displayLanguage"]
        `displayName` <- map["displayName"]
        `displayScript` <- map["displayScript"]
        `displayVariant` <- map["displayVariant"]
        `extensionKeys` <- map["extensionKeys"]
        `iso3Country` <- map["iso3Country"]
        `iso3Language` <- map["iso3Language"]
        `script` <- map["script"]
        `unicodeLocaleAttributes` <- map["unicodeLocaleAttributes"]
        `unicodeLocaleKeys` <- map["unicodeLocaleKeys"]
        `variant` <- map["variant"]
    }
}
