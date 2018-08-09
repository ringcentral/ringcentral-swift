import Foundation
import ObjectMapper
open class CreateVoicemailToInfo: Mappable {
    /*
    Extension ID
    */
    open var `extensionId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(extensionId: String? = nil) {
        self.init()
        self.extensionId = `extensionId`
    }
    open func mapping(map: Map) {
        `extensionId` <- (map["extensionId"], StringTransform())
    }
}
