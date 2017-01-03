import Foundation
import ObjectMapper
open class RingOutStatusInfo: Definition {
    // Status of a call
    open var `callStatus`: String?
    // Status of a calling party
    open var `callerStatus`: String?
    // Status of a called party
    open var `calleeStatus`: String?
    convenience public init(callStatus: String? = nil, callerStatus: String? = nil, calleeStatus: String? = nil) {
        self.init()
        self.callStatus = `callStatus`
        self.callerStatus = `callerStatus`
        self.calleeStatus = `calleeStatus`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `callStatus` <- map["callStatus"]
        `callerStatus` <- map["callerStatus"]
        `calleeStatus` <- map["calleeStatus"]
    }
}
