import Foundation
import ObjectMapper
open class ExtensionInfo_Request_PartnerId: Definition {
    // Extension partner identifier
    open var `partnerId`: String?
    convenience public init(partnerId: String? = nil) {
        self.init()
        self.partnerId = `partnerId`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `partnerId` <- map["partnerId"]
    }
}
