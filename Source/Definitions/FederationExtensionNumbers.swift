import Foundation
import ObjectMapper
open class FederationExtensionNumbers: Mappable {
    /*
    List of extension numbers of the current federation
    */
    open var `records`: [FederationExtensionNumbersExtensionInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(records: [FederationExtensionNumbersExtensionInfo]? = nil) {
        self.init()
        self.records = `records`
    }
    open func mapping(map: Map) {
        `records` <- map["records"]
    }
}
