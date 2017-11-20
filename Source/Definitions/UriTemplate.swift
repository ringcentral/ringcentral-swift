import Foundation
import ObjectMapper
open class UriTemplate: Mappable {
    /*
    */
    open var `template`: String?
    /*
    */
    open var `pattern`: PatternWithGroups?
    /*
    */
    open var `templateVariables`: [String]?
    /*
    */
    open var `numberOfExplicitRegexes`: Int?
    /*
    */
    open var `numberOfRegexGroups`: Int?
    /*
    */
    open var `numberOfExplicitCharacters`: Int?
    /*
    */
    open var `numberOfTemplateVariables`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(template: String? = nil, pattern: PatternWithGroups? = nil, templateVariables: [String]? = nil, numberOfExplicitRegexes: Int? = nil, numberOfRegexGroups: Int? = nil, numberOfExplicitCharacters: Int? = nil, numberOfTemplateVariables: Int? = nil) {
        self.init()
        self.template = `template`
        self.pattern = `pattern`
        self.templateVariables = `templateVariables`
        self.numberOfExplicitRegexes = `numberOfExplicitRegexes`
        self.numberOfRegexGroups = `numberOfRegexGroups`
        self.numberOfExplicitCharacters = `numberOfExplicitCharacters`
        self.numberOfTemplateVariables = `numberOfTemplateVariables`
    }
    open func mapping(map: Map) {
        `template` <- map["template"]
        `pattern` <- map["pattern"]
        `templateVariables` <- map["templateVariables"]
        `numberOfExplicitRegexes` <- map["numberOfExplicitRegexes"]
        `numberOfRegexGroups` <- map["numberOfRegexGroups"]
        `numberOfExplicitCharacters` <- map["numberOfExplicitCharacters"]
        `numberOfTemplateVariables` <- map["numberOfTemplateVariables"]
    }
}
