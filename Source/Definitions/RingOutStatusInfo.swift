import Foundation
import ObjectMapper
open class RingOutStatusInfo: Mappable {
    // Status of a call
    open var `callStatus`: String?
    // Status of a calling party
    open var `callerStatus`: String?
    // Status of a called party
    open var `calleeStatus`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(callStatus: String? = nil, callerStatus: String? = nil, calleeStatus: String? = nil) {
        self.init()
        self.callStatus = `callStatus`
        self.callerStatus = `callerStatus`
        self.calleeStatus = `calleeStatus`
    }
    open func mapping(map: Map) {
        `callStatus` <- map["callStatus"]
        `callerStatus` <- map["callerStatus"]
        `calleeStatus` <- map["calleeStatus"]
    }
}
