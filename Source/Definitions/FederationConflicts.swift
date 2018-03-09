import Foundation
import ObjectMapper
open class FederationConflicts: Mappable {
    /*
    List of conflicting federation extensions
    */
    open var `records`: [FederationExtensionInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(records: [FederationExtensionInfo]? = nil) {
        self.init()
        self.records = `records`
    }
    open func mapping(map: Map) {
        `records` <- map["records"]
    }
}
