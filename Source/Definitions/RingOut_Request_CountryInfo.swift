import Foundation
import ObjectMapper
open class RingOut_Request_CountryInfo: Definition {
    // Dialing plan country identifier
    open var `id`: String?
    convenience public init(id: String? = nil) {
        self.init()
        self.id = `id`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
    }
}
