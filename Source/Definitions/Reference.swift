import Foundation
import ObjectMapper
open class Reference: Mappable {
    /*
    */
    open var `type`: String?
    /*
    */
    open var `ref`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(type: String? = nil, ref: String? = nil) {
        self.init()
        self.type = `type`
        self.ref = `ref`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `ref` <- map["ref"]
    }
}
