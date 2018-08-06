import Foundation
import ObjectMapper
open class FixedOrderAgents: Mappable {
    /*
    */
    open var `extension`: ExtensionInfo?
    /*
    Ordinal of an agent (call queue member)
    */
    open var `index`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(extension: ExtensionInfo? = nil, index: Int? = nil) {
        self.init()
        self.extension = `extension`
        self.index = `index`
    }
    open func mapping(map: Map) {
        `extension` <- map["extension"]
        `index` <- map["index"]
    }
}
