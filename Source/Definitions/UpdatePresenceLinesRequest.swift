import Foundation
import ObjectMapper
open class UpdatePresenceLinesRequest: Mappable {
    /*
    */
    open var `records`: [PresenceLineInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(records: [PresenceLineInfo]? = nil) {
        self.init()
        self.records = `records`
    }
    open func mapping(map: Map) {
        `records` <- map["records"]
    }
}
