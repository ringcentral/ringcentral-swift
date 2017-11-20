import Foundation
import ObjectMapper
open class MediaType: Mappable {
    /*
    */
    open var `type`: String?
    /*
    */
    open var `subtype`: String?
    /*
    */
    open var `wildcardType`: Bool?
    /*
    */
    open var `wildcardSubtype`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(type: String? = nil, subtype: String? = nil, wildcardType: Bool? = nil, wildcardSubtype: Bool? = nil) {
        self.init()
        self.type = `type`
        self.subtype = `subtype`
        self.wildcardType = `wildcardType`
        self.wildcardSubtype = `wildcardSubtype`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `subtype` <- map["subtype"]
        `wildcardType` <- map["wildcardType"]
        `wildcardSubtype` <- map["wildcardSubtype"]
    }
}
