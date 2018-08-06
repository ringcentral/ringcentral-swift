import Foundation
import ObjectMapper
open class ErrorResponse: Mappable {
    /*
    Collection of all gathered errors
    */
    open var `errors`: [Error]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(errors: [Error]? = nil) {
        self.init()
        self.errors = `errors`
    }
    open func mapping(map: Map) {
        `errors` <- map["errors"]
    }
}
