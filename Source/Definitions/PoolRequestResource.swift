import Foundation
import ObjectMapper
open class PoolRequestResource: Mappable {
    /*
    */
    open var `rendererId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(rendererId: String? = nil) {
        self.init()
        self.rendererId = `rendererId`
    }
    open func mapping(map: Map) {
        `rendererId` <- map["rendererId"]
    }
}
