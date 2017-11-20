import Foundation
import ObjectMapper
open class ExtensionRegionalSettingRequest: Mappable {
    /*
    */
    open var `homeCountry`: ExtensionCountryInfoRequest?
    /*
    */
    open var `timezone`: ExtensionTimezoneInfoRequest?
    /*
    */
    open var `language`: ExtensionLanguageInfoRequest?
    /*
    */
    open var `greetingLanguage`: ExtensionGreetingLanguageInfoRequest?
    /*
    */
    open var `formattingLocale`: ExtensionFormattingLocaleInfoRequest?
    /*
    Time format setting. The default value is '12h' = ['12h', '24h']
    */
    open var `timeFormat`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(homeCountry: ExtensionCountryInfoRequest? = nil, timezone: ExtensionTimezoneInfoRequest? = nil, language: ExtensionLanguageInfoRequest? = nil, greetingLanguage: ExtensionGreetingLanguageInfoRequest? = nil, formattingLocale: ExtensionFormattingLocaleInfoRequest? = nil, timeFormat: String? = nil) {
        self.init()
        self.homeCountry = `homeCountry`
        self.timezone = `timezone`
        self.language = `language`
        self.greetingLanguage = `greetingLanguage`
        self.formattingLocale = `formattingLocale`
        self.timeFormat = `timeFormat`
    }
    open func mapping(map: Map) {
        `homeCountry` <- map["homeCountry"]
        `timezone` <- map["timezone"]
        `language` <- map["language"]
        `greetingLanguage` <- map["greetingLanguage"]
        `formattingLocale` <- map["formattingLocale"]
        `timeFormat` <- map["timeFormat"]
    }
}
