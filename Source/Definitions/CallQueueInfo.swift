import Foundation
import ObjectMapper
open class CallQueueInfo: Mappable {
    /*
    Target percentage of calls that must be answered by agents within the service level time threshold
    */
    open var `slaGoal`: Int?
    /*
    Period of time in seconds that is considered to be an acceptable service level
    */
    open var `slaThresholdSeconds`: Int?
    /*
    If 'True' abandoned calls (hanged up prior to being served) are included into service level calculation
    */
    open var `includeAbandonedCalls`: Bool?
    /*
    Period of time in seconds specifying abandoned calls duration - calls that are shorter will not be included into the calculation of service level.; zero value means that abandoned calls of any duration will be included into calculation
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
