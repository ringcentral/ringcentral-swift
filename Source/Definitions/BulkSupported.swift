import Foundation
import ObjectMapper
open class BulkSupported: Mappable {
    /*
    */
    open var `maxOperations`: Int?
    /*
    */
    open var `maxPayloadSize`: Int?
    /*
    */
    open var `supported`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(maxOperations: Int? = nil, maxPayloadSize: Int? = nil, supported: Bool? = nil) {
        self.init()
        self.maxOperations = `maxOperations`
        self.maxPayloadSize = `maxPayloadSize`
        self.supported = `supported`
    }
    open func mapping(map: Map) {
        `maxOperations` <- map["maxOperations"]
        `maxPayloadSize` <- map["maxPayloadSize"]
        `supported` <- map["supported"]
    }
}
