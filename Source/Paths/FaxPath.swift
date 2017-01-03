import Foundation
import ObjectMapper
import Alamofire
open class FaxPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "fax"
        }
    }
    open class PostParameters: Definition {
        // Recipient information. Phone number property is mandatory. Optional for resend fax request
        open var `to`: [CallerInfo]?
        // Fax resolution
        open var `faxResolution`: String?
        // The datetime to send fax at, in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. If time is not specified, the fax will be send immediately
        open var `sendTime`: String?
        // Optional. Cover page index. If not specified, the default cover page which is configured in "Outbound Fax Settings" is attached. See also 'Available Cover Pages' table below
        open var `coverIndex`: Int?
        // Optional. Cover page text, entered by the fax sender and printed on the cover page. Maximum length is limited to 1024 symbols
        open var `coverPageText`: String?
        // Internal identifier of the original fax message which needs to be resent. Mandatory for resend fax request
        open var `originalMessageId`: String?
        convenience public init(to: [CallerInfo]? = nil, faxResolution: String? = nil, sendTime: String? = nil, coverIndex: Int? = nil, coverPageText: String? = nil, originalMessageId: String? = nil) {
            self.init()
            self.to = `to`
            self.faxResolution = `faxResolution`
            self.sendTime = `sendTime`
            self.coverIndex = `coverIndex`
            self.coverPageText = `coverPageText`
            self.originalMessageId = `originalMessageId`
        }
        required public init?(map: Map) {
            super.init(map: map)
        }
        public override init() {
            super.init()
        }
        open override func mapping(map: Map) {
            `to` <- map["to"]
            `faxResolution` <- map["faxResolution"]
            `sendTime` <- map["sendTime"]
            `coverIndex` <- map["coverIndex"]
            `coverPageText` <- map["coverPageText"]
            `originalMessageId` <- map["originalMessageId"]
        }
    }
}
