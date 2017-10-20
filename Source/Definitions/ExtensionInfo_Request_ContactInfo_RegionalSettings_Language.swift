import Foundation
import ObjectMapper
open class ExtensionInfo_Request_ContactInfo_RegionalSettings_Language: Mappable {
    /*
    Language identifier. The default value is "1033" (English US)
    */
    open var `id`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil) {
        self.init()
        self.id = `id`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
    }
}
