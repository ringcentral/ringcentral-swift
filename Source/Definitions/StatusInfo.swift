import Foundation
import ObjectMapper
open class StatusInfo: Mappable {
    /*
    */
    open var `reason`: String?
    /*
    */
    open var `till`: String?
    /*
    */
    open var `comment`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(reason: String? = nil, till: String? = nil, comment: String? = nil) {
        self.init()
        self.reason = `reason`
        self.till = `till`
        self.comment = `comment`
    }
    open func mapping(map: Map) {
        `reason` <- map["reason"]
        `till` <- map["till"]
        `comment` <- map["comment"]
    }
}
