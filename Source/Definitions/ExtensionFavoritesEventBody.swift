import Foundation
import ObjectMapper
open class ExtensionFavoritesEventBody: Mappable {
    /*
    Internal identifier of an extension
    */
    open var `extensionId`: String?
    /*
    Internal identifier of a subscription owner extension
    */
    open var `ownerId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(extensionId: String? = nil, ownerId: String? = nil) {
        self.init()
        self.extensionId = `extensionId`
        self.ownerId = `ownerId`
    }
    open func mapping(map: Map) {
        `extensionId` <- (map["extensionId"], StringTransform())
        `ownerId` <- map["ownerId"]
    }
}
