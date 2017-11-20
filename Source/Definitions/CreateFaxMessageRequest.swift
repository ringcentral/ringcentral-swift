import Foundation
import ObjectMapper
open class CreateFaxMessageRequest: Mappable {
    /*
    Recipient information. Phone number property is mandatory. Optional for resend fax request
    */
    open var `to`: [MessageStoreCallerInfoRequest]?
    /*
    Fax resolution
    */
    open var `resolution`: String?
    /*
    The datetime to send fax at, in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. If time is not specified, the fax will be send immediately
    */
    open var `sendTime`: String?
    /*
    Optional. Cover page text, entered by the fax sender and printed on the cover page. Maximum length is limited to 1024 symbols
    */
    open var `coverPageText`: String?
    /*
    Internal identifier of the original fax message which needs to be resent. Mandatory for resend fax request
    */
    open var `originalMessageId`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(to: [MessageStoreCallerInfoRequest]? = nil, resolution: String? = nil, sendTime: String? = nil, coverPageText: String? = nil, originalMessageId: String? = nil) {
        self.init()
        self.to = `to`
        self.resolution = `resolution`
        self.sendTime = `sendTime`
        self.coverPageText = `coverPageText`
        self.originalMessageId = `originalMessageId`
    }
    open func mapping(map: Map) {
        `to` <- map["to"]
        `resolution` <- map["resolution"]
        `sendTime` <- map["sendTime"]
        `coverPageText` <- map["coverPageText"]
        `originalMessageId` <- map["originalMessageId"]
    }
}
