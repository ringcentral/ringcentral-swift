import Foundation
import ObjectMapper
open class ExtensionInfo_Request_PartnerId: Mappable {
    // Extension partner identifier
    open var `partnerId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(partnerId: String? = nil) {
        self.init()
        self.partnerId = `partnerId`
    }
    open func mapping(map: Map) {
        `partnerId` <- map["partnerId"]
    }
}
