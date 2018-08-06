import Foundation
import ObjectMapper
open class UserPatch: Mappable {
    /*
    patch operations list
    */
    open var `Operations`: [PatchOperation]?
    /*
    */
    open var `schemas`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(Operations: [PatchOperation]? = nil, schemas: [String]? = nil) {
        self.init()
        self.Operations = `Operations`
        self.schemas = `schemas`
    }
    open func mapping(map: Map) {
        `Operations` <- map["Operations"]
        `schemas` <- map["schemas"]
    }
}
