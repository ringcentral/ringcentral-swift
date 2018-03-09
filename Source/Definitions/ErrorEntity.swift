import Foundation
import ObjectMapper
open class ErrorEntity: Mappable {
    /*
    */
    open var `errorCode`: String?
    /*
    */
    open var `message`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(errorCode: String? = nil, message: String? = nil) {
        self.init()
        self.errorCode = `errorCode`
        self.message = `message`
    }
    open func mapping(map: Map) {
        `errorCode` <- map["errorCode"]
        `message` <- map["message"]
    }
}
