import Foundation
import ObjectMapper
open class AnsweringRuleInfo_CallerInfo: Mappable {
    /*
    Phone number of a caller
    */
    open var `callerId`: String?
    /*
    Contact name of a caller
    */
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(callerId: String? = nil, name: String? = nil) {
        self.init()
        self.callerId = `callerId`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `callerId` <- map["callerId"]
        `name` <- map["name"]
    }
}
