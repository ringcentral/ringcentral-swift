import Foundation
import ObjectMapper
open class PathPattern: Mappable {
    /*
    */
    open var `regex`: String?
    /*
    */
    open var `groupIndexes`: [Int]?
    /*
    */
    open var `template`: UriTemplate?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(regex: String? = nil, groupIndexes: [Int]? = nil, template: UriTemplate? = nil) {
        self.init()
        self.regex = `regex`
        self.groupIndexes = `groupIndexes`
        self.template = `template`
    }
    open func mapping(map: Map) {
        `regex` <- map["regex"]
        `groupIndexes` <- map["groupIndexes"]
        `template` <- map["template"]
    }
}
