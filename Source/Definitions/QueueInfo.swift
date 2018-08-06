import Foundation
import ObjectMapper
open class QueueInfo: Mappable {
    /*
    Specifies how calls are transferred to group members
    */
    open var `transferMode`: String?
    /*
    Information on a call forwarding rule
    */
    open var `fixedOrderAgents`: [FixedOrderAgents]?
    /*
    Connecting audio interruption mode
    */
    open var `holdAudioInterruptionMode`: String?
    /*
    Connecting audio interruption message period in seconds
    */
    open var `holdAudioInterruptionPeriod`: Int?
    /*
    Maximum time in seconds to wait for a call queue member before trying the next member
    */
    open var `agentTimeout`: Int?
    /*
    Minimum post-call wrap up time in seconds before agent status is automatically set
    */
    open var `wrapUpTime`: Int?
    /*
    Maximum hold time in seconds to wait for an available call queue member
    */
    open var `holdTime`: Int?
    /*
    Maximum count of callers on hold
    */
    open var `maxCallers`: Int?
    /*
    Action which should be taken if count of callers on hold exceeds the maximum
    */
    open var `maxCallersAction`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(transferMode: String? = nil, fixedOrderAgents: [FixedOrderAgents]? = nil, holdAudioInterruptionMode: String? = nil, holdAudioInterruptionPeriod: Int? = nil, agentTimeout: Int? = nil, wrapUpTime: Int? = nil, holdTime: Int? = nil, maxCallers: Int? = nil, maxCallersAction: String? = nil) {
        self.init()
        self.transferMode = `transferMode`
        self.fixedOrderAgents = `fixedOrderAgents`
        self.holdAudioInterruptionMode = `holdAudioInterruptionMode`
        self.holdAudioInterruptionPeriod = `holdAudioInterruptionPeriod`
        self.agentTimeout = `agentTimeout`
        self.wrapUpTime = `wrapUpTime`
        self.holdTime = `holdTime`
        self.maxCallers = `maxCallers`
        self.maxCallersAction = `maxCallersAction`
    }
    open func mapping(map: Map) {
        `transferMode` <- map["transferMode"]
        `fixedOrderAgents` <- map["fixedOrderAgents"]
        `holdAudioInterruptionMode` <- map["holdAudioInterruptionMode"]
        `holdAudioInterruptionPeriod` <- map["holdAudioInterruptionPeriod"]
        `agentTimeout` <- map["agentTimeout"]
        `wrapUpTime` <- map["wrapUpTime"]
        `holdTime` <- map["holdTime"]
        `maxCallers` <- map["maxCallers"]
        `maxCallersAction` <- map["maxCallersAction"]
    }
}
