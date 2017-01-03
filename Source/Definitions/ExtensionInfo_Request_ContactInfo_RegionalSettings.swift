import Foundation
import ObjectMapper
open class ExtensionInfo_Request_ContactInfo_RegionalSettings: Definition {
    // Timezone data
    open var `timezone`: ExtensionInfo_Request_ContactInfo_RegionalSettings_Timezone?
    // User interface language data
    open var `language`: ExtensionInfo_Request_ContactInfo_RegionalSettings_Language?
    // Information on language used for telephony greetings
    open var `greetingLanguage`: ExtensionInfo_Request_ContactInfo_RegionalSettings_GreetingLanguage?
    // Formatting language preferences for numbers, dates and currencies
    open var `formattingLocale`: ExtensionInfo_Request_ContactInfo_RegionalSettings_FormattingLocale?
    convenience public init(timezone: ExtensionInfo_Request_ContactInfo_RegionalSettings_Timezone? = nil, language: ExtensionInfo_Request_ContactInfo_RegionalSettings_Language? = nil, greetingLanguage: ExtensionInfo_Request_ContactInfo_RegionalSettings_GreetingLanguage? = nil, formattingLocale: ExtensionInfo_Request_ContactInfo_RegionalSettings_FormattingLocale? = nil) {
        self.init()
        self.timezone = `timezone`
        self.language = `language`
        self.greetingLanguage = `greetingLanguage`
        self.formattingLocale = `formattingLocale`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `timezone` <- map["timezone"]
        `language` <- map["language"]
        `greetingLanguage` <- map["greetingLanguage"]
        `formattingLocale` <- map["formattingLocale"]
    }
}
