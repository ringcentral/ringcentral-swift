import Foundation
import ObjectMapper
open class IncomingCallInformationResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `announcementWhenDirectCalls`: String?
    /*
    */
    open var `announcementWhenDepartmentCalls`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, announcementWhenDirectCalls: String? = nil, announcementWhenDepartmentCalls: String? = nil) {
        self.init()
        self.uri = `uri`
        self.announcementWhenDirectCalls = `announcementWhenDirectCalls`
        self.announcementWhenDepartmentCalls = `announcementWhenDepartmentCalls`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `announcementWhenDirectCalls` <- map["announcementWhenDirectCalls"]
        `announcementWhenDepartmentCalls` <- map["announcementWhenDepartmentCalls"]
    }
}
