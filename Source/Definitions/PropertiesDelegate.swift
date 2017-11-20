import Foundation
import ObjectMapper
open class PropertiesDelegate: Mappable {
    /*
    */
    open var `propertyNames`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(propertyNames: [String]? = nil) {
        self.init()
        self.propertyNames = `propertyNames`
    }
    open func mapping(map: Map) {
        `propertyNames` <- map["propertyNames"]
    }
}
