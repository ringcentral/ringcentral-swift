import Foundation
import ObjectMapper
open class FederationExtensionNumbersExtensionInfo: Mappable {
    /*
    Internal identifier of an extension
    */
    open var `id`: String?
    /*
    Number of an extension
    */
    open var `extensionNumber`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, extensionNumber: String? = nil) {
        self.init()
        self.id = `id`
        self.extensionNumber = `extensionNumber`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `extensionNumber` <- map["extensionNumber"]
    }
}
