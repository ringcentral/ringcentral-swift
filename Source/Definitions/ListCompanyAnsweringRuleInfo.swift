import Foundation
import ObjectMapper
open class ListCompanyAnsweringRuleInfo: Mappable {
    /*
    Internal identifier of an answering rule
    */
    open var `id`: String?
    /*
    Canonical URI of an answering rule
    */
    open var `uri`: String?
    /*
    Specifies if the rule is active or inactive. The default value is 'True'
    */
    open var `enabled`: Bool?
    /*
    Type of an answering rule, the default value is 'Custom' = ['BusinessHours', 'AfterHours', 'Custom']
    */
    open var `type`: String?
    /*
    Name of an answering rule specified by user. Max number of symbols is 30. The default value is 'My Rule N' where 'N' is the first free number
    */
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, enabled: Bool? = nil, type: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.enabled = `enabled`
        self.type = `type`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `enabled` <- map["enabled"]
        `type` <- map["type"]
        `name` <- map["name"]
    }
}
