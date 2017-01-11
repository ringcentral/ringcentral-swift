import Foundation
import ObjectMapper
open class ExtensionInfo_Request_ContactInfo_RegionalSettings_GreetingLanguage: Mappable {
    // Internal identifier of a greeting language
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
