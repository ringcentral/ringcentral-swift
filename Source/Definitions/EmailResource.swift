import Foundation
import ObjectMapper
open class EmailResource: Mappable {
    /*
    */
    open var `accountId`: String?
    /*
    */
    open var `extensionId`: String?
    /*
    */
    open var `templateId`: String?
    /*
    */
    open var `recipients`: [String]?
    /*
    */
    open var `files`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(accountId: String? = nil, extensionId: String? = nil, templateId: String? = nil, recipients: [String]? = nil, files: [String]? = nil) {
        self.init()
        self.accountId = `accountId`
        self.extensionId = `extensionId`
        self.templateId = `templateId`
        self.recipients = `recipients`
        self.files = `files`
    }
    open func mapping(map: Map) {
        `accountId` <- map["accountId"]
        `extensionId` <- map["extensionId"]
        `templateId` <- map["templateId"]
        `recipients` <- map["recipients"]
        `files` <- map["files"]
    }
}
