import Foundation
import ObjectMapper
open class MeetingsPresence: Mappable {
    /*
    Zoom connection status
    */
    open var `meetingsStatus`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(meetingsStatus: String? = nil) {
        self.init()
        self.meetingsStatus = `meetingsStatus`
    }
    open func mapping(map: Map) {
        `meetingsStatus` <- map["meetingsStatus"]
    }
}
