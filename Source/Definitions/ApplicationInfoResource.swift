import Foundation
import ObjectMapper
open class ApplicationInfoResource: Mappable {
    /*
    */
    open var `clientId`: String?
    /*
    */
    open var `application`: ApplicationResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(clientId: String? = nil, application: ApplicationResource? = nil) {
        self.init()
        self.clientId = `clientId`
        self.application = `application`
    }
    open func mapping(map: Map) {
        `clientId` <- map["clientId"]
        `application` <- map["application"]
    }
}
