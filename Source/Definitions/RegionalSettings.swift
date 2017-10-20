import Foundation
import ObjectMapper
open class RegionalSettings: Mappable {
    /*
    Extension country information
    */
    open var `homeCountry`: CountryInfo?
    /*
    Extension timezone information
    */
    open var `timezone`: TimezoneInfo?
    /*
    User interface language data
    */
    open var `language`: LanguageInfo?
    /*
    Information on language used for telephony greetings
    */
    open var `greetingLanguage`: GreetingLanguageInfo?
    /*
    Formatting language preferences for numbers, dates and currencies
    */
    open var `formattingLocale`: FormattingLocaleInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(homeCountry: CountryInfo? = nil, timezone: TimezoneInfo? = nil, language: LanguageInfo? = nil, greetingLanguage: GreetingLanguageInfo? = nil, formattingLocale: FormattingLocaleInfo? = nil) {
        self.init()
        self.homeCountry = `homeCountry`
        self.timezone = `timezone`
        self.language = `language`
        self.greetingLanguage = `greetingLanguage`
        self.formattingLocale = `formattingLocale`
    }
    open func mapping(map: Map) {
        `homeCountry` <- map["homeCountry"]
        `timezone` <- map["timezone"]
        `language` <- map["language"]
        `greetingLanguage` <- map["greetingLanguage"]
        `formattingLocale` <- map["formattingLocale"]
    }
}
