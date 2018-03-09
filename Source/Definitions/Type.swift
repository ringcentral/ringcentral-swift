import Foundation
import ObjectMapper
open class Type: Mappable {
    /*
    */
    open var `typeName`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(typeName: String? = nil) {
        self.init()
        self.typeName = `typeName`
    }
    open func mapping(map: Map) {
        `typeName` <- map["typeName"]
    }
}
