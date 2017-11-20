import Foundation
import ObjectMapper
open class File: Mappable {
    /*
    */
    open var `sourceFile`: String?
    /*
    */
    open var `originalFileName`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(sourceFile: String? = nil, originalFileName: String? = nil) {
        self.init()
        self.sourceFile = `sourceFile`
        self.originalFileName = `originalFileName`
    }
    open func mapping(map: Map) {
        `sourceFile` <- map["sourceFile"]
        `originalFileName` <- map["originalFileName"]
    }
}
