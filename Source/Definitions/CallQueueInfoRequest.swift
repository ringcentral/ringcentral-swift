import Foundation
import ObjectMapper
open class CallQueueInfoRequest: Mappable {
    /*
    Target percentage of calls that must be answered by agents within the service level time threshold
    */
    open var `slaGoal`: Int?
    /*
    */
    open var `slaThresholdSeconds`: Int?
    /*
    */
    open var `includeAbandonedCalls`: Bool?
    /*
    */
    open var `abandonedThresholdSeconds`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(slaGoal: Int? = nil, slaThresholdSeconds: Int? = nil, includeAbandonedCalls: Bool? = nil, abandonedThresholdSeconds: Int? = nil) {
        self.init()
        self.slaGoal = `slaGoal`
        self.slaThresholdSeconds = `slaThresholdSeconds`
        self.includeAbandonedCalls = `includeAbandonedCalls`
        self.abandonedThresholdSeconds = `abandonedThresholdSeconds`
    }
    open func mapping(map: Map) {
        `slaGoal` <- map["slaGoal"]
        `slaThresholdSeconds` <- map["slaThresholdSeconds"]
        `includeAbandonedCalls` <- map["includeAbandonedCalls"]
        `abandonedThresholdSeconds` <- map["abandonedThresholdSeconds"]
    }
}
