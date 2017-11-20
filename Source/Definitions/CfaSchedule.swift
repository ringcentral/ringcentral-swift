import Foundation
import ObjectMapper
open class CfaSchedule: Mappable {
    /*
    */
    open var `scheduleId`: String?
    /*
    */
    open var `recurrence`: CfaRecurrence?
    /*
    */
    open var `viewType`: String?
    /*
    */
    open var `attachments`: CfaAttachments?
    /*
    */
    open var `recipients`: [String]?
    /*
    */
    open var `pages`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(scheduleId: String? = nil, recurrence: CfaRecurrence? = nil, viewType: String? = nil, attachments: CfaAttachments? = nil, recipients: [String]? = nil, pages: [String]? = nil) {
        self.init()
        self.scheduleId = `scheduleId`
        self.recurrence = `recurrence`
        self.viewType = `viewType`
        self.attachments = `attachments`
        self.recipients = `recipients`
        self.pages = `pages`
    }
    open func mapping(map: Map) {
        `scheduleId` <- map["scheduleId"]
        `recurrence` <- map["recurrence"]
        `viewType` <- map["viewType"]
        `attachments` <- map["attachments"]
        `recipients` <- map["recipients"]
        `pages` <- map["pages"]
    }
}
