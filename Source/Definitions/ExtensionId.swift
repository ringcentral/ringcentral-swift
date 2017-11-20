import Foundation
import ObjectMapper
open class ExtensionId: Mappable {
    /*
    */
    open var `value`: Int?
    /*
    */
    open var `decimal`: Double?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(value: Int? = nil, decimal: Double? = nil) {
        self.init()
        self.value = `value`
        self.decimal = `decimal`
    }
    open func mapping(map: Map) {
        `value` <- map["value"]
        `decimal` <- map["decimal"]
    }
}
