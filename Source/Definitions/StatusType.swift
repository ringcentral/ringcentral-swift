import Foundation
import ObjectMapper
open class StatusType: Mappable {
    /*
    */
    open var `family`: String?
    /*
    */
    open var `statusCode`: Int?
    /*
    */
    open var `reasonPhrase`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(family: String? = nil, statusCode: Int? = nil, reasonPhrase: String? = nil) {
        self.init()
        self.family = `family`
        self.statusCode = `statusCode`
        self.reasonPhrase = `reasonPhrase`
    }
    open func mapping(map: Map) {
        `family` <- map["family"]
        `statusCode` <- map["statusCode"]
        `reasonPhrase` <- map["reasonPhrase"]
    }
}
