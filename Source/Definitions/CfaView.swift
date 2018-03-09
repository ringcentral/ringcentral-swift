import Foundation
import ObjectMapper
open class CfaView: Mappable {
    /*
    */
    open var `name`: String?
    /*
    */
    open var `schedules`: [CfaSchedule]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(name: String? = nil, schedules: [CfaSchedule]? = nil) {
        self.init()
        self.name = `name`
        self.schedules = `schedules`
    }
    open func mapping(map: Map) {
        `name` <- map["name"]
        `schedules` <- map["schedules"]
    }
}
