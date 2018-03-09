import Foundation
import ObjectMapper
open class AcceptableToken: Mappable {
    /*
    */
    open var `token`: String?
    /*
    */
    open var `quality`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(token: String? = nil, quality: Int? = nil) {
        self.init()
        self.token = `token`
        self.quality = `quality`
    }
    open func mapping(map: Map) {
        `token` <- map["token"]
        `quality` <- map["quality"]
    }
}
