import Foundation
import ObjectMapper
open class UrnInfoRequest: Mappable {
    /*
    Name of department (call queue) member
    */
    open var `department`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(department: String? = nil) {
        self.init()
        self.department = `department`
    }
    open func mapping(map: Map) {
        `department` <- map["department"]
    }
}
