import Foundation
import ObjectMapper
open class AlertInfo: Mappable {
    /*
    Title of a message
    */
    open var `title`: String?
    /*
    Message Description
    */
    open var `body`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(title: String? = nil, body: String? = nil) {
        self.init()
        self.title = `title`
        self.body = `body`
    }
    open func mapping(map: Map) {
        `title` <- map["title"]
        `body` <- map["body"]
    }
}
