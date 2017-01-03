import Foundation
import ObjectMapper
open class Binary: Definition {
    // Required. Binary data.
    open var `data`: Data?
    convenience public init(data: Data? = nil) {
        self.init()
        self.data = `data`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `data` <- map["data"]
    }
}
