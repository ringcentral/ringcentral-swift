import Foundation
import ObjectMapper
open class CallMonitoringBulkAssign: Mappable {
    /*
    */
    open var `addedExtensions`: [CallMonitoringExtensionUpdate]?
    /*
    */
    open var `removedExtensions`: [CallMonitoringExtensionUpdate]?
    /*
    */
    open var `updatedExtensions`: [CallMonitoringExtensionUpdate]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(addedExtensions: [CallMonitoringExtensionUpdate]? = nil, removedExtensions: [CallMonitoringExtensionUpdate]? = nil, updatedExtensions: [CallMonitoringExtensionUpdate]? = nil) {
        self.init()
        self.addedExtensions = `addedExtensions`
        self.removedExtensions = `removedExtensions`
        self.updatedExtensions = `updatedExtensions`
    }
    open func mapping(map: Map) {
        `addedExtensions` <- map["addedExtensions"]
        `removedExtensions` <- map["removedExtensions"]
        `updatedExtensions` <- map["updatedExtensions"]
    }
}
