import Foundation
import ObjectMapper
open class CustomDataRequest: Mappable {
    /*
    Custom data access key. Optional. If specified, must match the custom key in the URL
    */
    open var `id`: String?
    /*
    Description of custom data. Mandatory for create, if there is no attachment specified. Maximum length is limited to 256 symbols
    */
    open var `value`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, value: String? = nil) {
        self.init()
        self.id = `id`
        self.value = `value`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `value` <- map["value"]
    }
}
