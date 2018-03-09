import Foundation
import ObjectMapper
open class AnsweringForwardingRuleResource: Mappable {
    /*
    */
    open var `index`: Int?
    /*
    */
    open var `ringCount`: Int?
    /*
    */
    open var `forwardingNumbers`: [ForwardingNumberResource]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(index: Int? = nil, ringCount: Int? = nil, forwardingNumbers: [ForwardingNumberResource]? = nil) {
        self.init()
        self.index = `index`
        self.ringCount = `ringCount`
        self.forwardingNumbers = `forwardingNumbers`
    }
    open func mapping(map: Map) {
        `index` <- map["index"]
        `ringCount` <- map["ringCount"]
        `forwardingNumbers` <- map["forwardingNumbers"]
    }
}
