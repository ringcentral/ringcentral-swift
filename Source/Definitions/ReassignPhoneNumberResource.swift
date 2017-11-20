import Foundation
import ObjectMapper
open class ReassignPhoneNumberResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `usageType`: String?
    /*
    */
    open var `extension`: ExtensionReferenceResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, usageType: String? = nil, extension: ExtensionReferenceResource? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.usageType = `usageType`
        self.extension = `extension`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `usageType` <- map["usageType"]
        `extension` <- map["extension"]
    }
}
