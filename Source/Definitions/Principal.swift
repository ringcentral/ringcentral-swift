import Foundation
import ObjectMapper
open class Principal: Mappable {
    /*
    */
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(name: String? = nil) {
        self.init()
        self.name = `name`
    }
    open func mapping(map: Map) {
        `name` <- map["name"]
    }
}
