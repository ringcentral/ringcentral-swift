import Foundation
import ObjectMapper
open class ResourceModelComponent: Mappable {
    /*
    */
    open var `components`: [ResourceModelComponent]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(components: [ResourceModelComponent]? = nil) {
        self.init()
        self.components = `components`
    }
    open func mapping(map: Map) {
        `components` <- map["components"]
    }
}
