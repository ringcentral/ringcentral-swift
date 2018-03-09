import Foundation
import ObjectMapper
open class SchedulesInfoReporting: Mappable {
    /*
    Unique schedule identifier
    */
    open var `scheduleId`: String?
    /*
    Recurrence pattern of a schedule
    */
    open var `recurrence`: [RecurrenceInfoReporting]?
    /*
    Type of report. Detailed reports include tables with data. Simple reports only include charts
    */
    open var `viewType`: String?
    /*
    Set of optional attachments. Basically, every report email is in HTML format. Optionally, it can contain PDF or CSV files
    */
    open var `attachments`: [AttachmentInfoReporting]?
    /*
    List of pages to include to the report. If empty, all pages are included. Otherwise, only specified pages are included. API doesn't check validity of page names. Client application is responsible to do that
    */
    open var `pages`: [String]?
    /*
    List of emails to which to send rendered reports
    */
    open var `recipients`: [String]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(scheduleId: String? = nil, recurrence: [RecurrenceInfoReporting]? = nil, viewType: String? = nil, attachments: [AttachmentInfoReporting]? = nil, pages: [String]? = nil, recipients: [String]? = nil) {
        self.init()
        self.scheduleId = `scheduleId`
        self.recurrence = `recurrence`
        self.viewType = `viewType`
        self.attachments = `attachments`
        self.pages = `pages`
        self.recipients = `recipients`
    }
    open func mapping(map: Map) {
        `scheduleId` <- map["scheduleId"]
        `recurrence` <- map["recurrence"]
        `viewType` <- map["viewType"]
        `attachments` <- map["attachments"]
        `pages` <- map["pages"]
        `recipients` <- map["recipients"]
    }
}
