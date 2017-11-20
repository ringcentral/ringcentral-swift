import Foundation
import ObjectMapper
open class AdminNoticeResource: Mappable {
    /*
    */
    open var `subjectCode`: String?
    /*
    */
    open var `message`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(subjectCode: String? = nil, message: String? = nil) {
        self.init()
        self.subjectCode = `subjectCode`
        self.message = `message`
    }
    open func mapping(map: Map) {
        `subjectCode` <- map["subjectCode"]
        `message` <- map["message"]
    }
}
