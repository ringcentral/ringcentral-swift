import Foundation
import ObjectMapper
open class DeviceOrderCreation: Mappable {
    /*
    List of devices ordered
    */
    open var `devices`: [DeviceResource]?
    /*
    For Async Order Only. Information on device ordering task
    */
    open var `task`: TaskInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(devices: [DeviceResource]? = nil, task: TaskInfo? = nil) {
        self.init()
        self.devices = `devices`
        self.task = `task`
    }
    open func mapping(map: Map) {
        `devices` <- map["devices"]
        `task` <- map["task"]
    }
}
