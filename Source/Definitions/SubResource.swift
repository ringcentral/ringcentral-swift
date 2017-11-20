import Foundation
import ObjectMapper
open class SubResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `resourceDescription`: String?
    /*
    */
    open var `parentId`: Int?
    /*
    */
    open var `subId`: Int?
    /*
    */
    open var `subVer`: ApiVersionResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, resourceDescription: String? = nil, parentId: Int? = nil, subId: Int? = nil, subVer: ApiVersionResource? = nil) {
        self.init()
        self.uri = `uri`
        self.resourceDescription = `resourceDescription`
        self.parentId = `parentId`
        self.subId = `subId`
        self.subVer = `subVer`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `resourceDescription` <- map["resourceDescription"]
        `parentId` <- map["parentId"]
        `subId` <- map["subId"]
        `subVer` <- map["subVer"]
    }
}
