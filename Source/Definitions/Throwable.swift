import Foundation
import ObjectMapper
open class Throwable: Mappable {
    /*
    */
    open var `cause`: Throwable?
    /*
    */
    open var `stackTrace`: [StackTraceElement]?
    /*
    */
    open var `localizedMessage`: String?
    /*
    */
    open var `message`: String?
    /*
    */
    open var `suppressed`: [Throwable]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(cause: Throwable? = nil, stackTrace: [StackTraceElement]? = nil, localizedMessage: String? = nil, message: String? = nil, suppressed: [Throwable]? = nil) {
        self.init()
        self.cause = `cause`
        self.stackTrace = `stackTrace`
        self.localizedMessage = `localizedMessage`
        self.message = `message`
        self.suppressed = `suppressed`
    }
    open func mapping(map: Map) {
        `cause` <- map["cause"]
        `stackTrace` <- map["stackTrace"]
        `localizedMessage` <- map["localizedMessage"]
        `message` <- map["message"]
        `suppressed` <- map["suppressed"]
    }
}
