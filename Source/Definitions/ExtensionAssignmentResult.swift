import Foundation
import ObjectMapper
open class ExtensionAssignmentResult: Mappable {
    /*
    */
    open var `successful`: Bool?
    /*
    */
    open var `extension`: ExtensionResource?
    /*
    */
    open var `error`: ErrorEntity?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(successful: Bool? = nil, extension: ExtensionResource? = nil, error: ErrorEntity? = nil) {
        self.init()
        self.successful = `successful`
        self.extension = `extension`
        self.error = `error`
    }
    open func mapping(map: Map) {
        `successful` <- map["successful"]
        `extension` <- map["extension"]
        `error` <- map["error"]
    }
}
