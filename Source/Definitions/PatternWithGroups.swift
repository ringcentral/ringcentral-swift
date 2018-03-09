import Foundation
import ObjectMapper
open class PatternWithGroups: Mappable {
    /*
    */
    open var `regex`: String?
    /*
    */
    open var `groupIndexes`: [Int]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(regex: String? = nil, groupIndexes: [Int]? = nil) {
        self.init()
        self.regex = `regex`
        self.groupIndexes = `groupIndexes`
    }
    open func mapping(map: Map) {
        `regex` <- map["regex"]
        `groupIndexes` <- map["groupIndexes"]
    }
}
