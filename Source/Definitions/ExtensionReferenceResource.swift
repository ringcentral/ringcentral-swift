import Foundation
import ObjectMapper
open class ExtensionReferenceResource: Mappable {
    /*
    */
    open var `id`: String?
    /*
    */
    open var `partnerId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, partnerId: String? = nil) {
        self.init()
        self.id = `id`
        self.partnerId = `partnerId`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `partnerId` <- map["partnerId"]
    }
}
