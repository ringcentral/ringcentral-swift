import Foundation
import ObjectMapper
open class PatchOperation: Mappable {
    /*
    */
    open var `op`: String?
    /*
    */
    open var `path`: String?
    /*
    corresponding 'value' of that field specified by 'path'
    */
    open var `value`: AnyObject?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(op: String? = nil, path: String? = nil, value: AnyObject? = nil) {
        self.init()
        self.op = `op`
        self.path = `path`
        self.value = `value`
    }
    open func mapping(map: Map) {
        `op` <- map["op"]
        `path` <- map["path"]
        `value` <- map["value"]
    }
}
