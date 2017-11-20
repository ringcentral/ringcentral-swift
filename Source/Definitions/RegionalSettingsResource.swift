import Foundation
import ObjectMapper
open class RegionalSettingsResource: Mappable {
    /*
    */
    open var `timezone`: TimezoneResource?
    /*
    */
    open var `homeCountry`: CountryResource?
    /*
    */
    open var `language`: LanguageResource?
    /*
    */
    open var `greetingLanguage`: LanguageResource?
    /*
    */
    open var `formattingLocale`: LanguageResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(timezone: TimezoneResource? = nil, homeCountry: CountryResource? = nil, language: LanguageResource? = nil, greetingLanguage: LanguageResource? = nil, formattingLocale: LanguageResource? = nil) {
        self.init()
        self.timezone = `timezone`
        self.homeCountry = `homeCountry`
        self.language = `language`
        self.greetingLanguage = `greetingLanguage`
        self.formattingLocale = `formattingLocale`
    }
    open func mapping(map: Map) {
        `timezone` <- map["timezone"]
        `homeCountry` <- map["homeCountry"]
        `language` <- map["language"]
        `greetingLanguage` <- map["greetingLanguage"]
        `formattingLocale` <- map["formattingLocale"]
    }
}
