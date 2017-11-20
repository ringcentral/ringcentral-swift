import Foundation
import ObjectMapper
open class AcceptableMediaType: Mappable {
    /*
    */
    open var `type`: String?
    /*
    */
    open var `subtype`: String?
    /*
    */
    open var `quality`: Int?
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
    convenience public init(type: String? = nil, subtype: String? = nil, quality: Int? = nil, wildcardType: Bool? = nil, wildcardSubtype: Bool? = nil) {
        self.init()
        self.type = `type`
        self.subtype = `subtype`
        self.quality = `quality`
        self.wildcardType = `wildcardType`
        self.wildcardSubtype = `wildcardSubtype`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `subtype` <- map["subtype"]
        `quality` <- map["quality"]
        `wildcardType` <- map["wildcardType"]
        `wildcardSubtype` <- map["wildcardSubtype"]
    }
}
