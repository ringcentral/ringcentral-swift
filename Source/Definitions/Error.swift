import Foundation
import ObjectMapper
open class Error: Mappable {
    /*
    Code that characterizes this error. Code uniqly identifies the source of the error.
    */
    open var `errorCode`: String?
    /*
    Message that describes the error. This message can be used in UI.
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
