import Foundation
import ObjectMapper
open class DictionaryGreetingInfo: Mappable {
    /*
    Internal identifier of a greeting
    */
    open var `id`: String?
    /*
    Link to a greeting
    */
    open var `uri`: String?
    /*
    Name of a greeting
    */
    open var `name`: String?
    /*
    Usage type of a greeting, specifying if the greeting is applied for user extension or department extension = ['UserExtensionAnsweringRule', 'ExtensionAnsweringRule', 'DepartmentExtensionAnsweringRule', 'CompanyAnsweringRule', 'CompanyAfterHoursAnsweringRule']
    */
    open var `usageType`: String?
    /*
    Text of a greeting, if any
    */
    open var `text`: String?
    /*
    Link to a greeting content (audio file), if any
    */
    open var `contentUri`: String?
    /*
    Type of a greeting, specifying the case when the greeting is played. See Greeting Types = ['Introductory', 'Announcement', 'ConnectingMessage', 'ConnectingAudio', 'Voicemail', 'Unavailable', 'InterruptPrompt', 'HoldMusic', 'Company']
    */
    open var `type`: String?
    /*
    Category of a greeting, specifying data form. The category value 'None' specifies that greetings of a certain type ('Introductory', 'ConnectingAudio', etc.) are switched off for an extension = ['Music', 'Message', 'Ring Tones', 'None']
    */
    open var `category`: String?
    /*
    Information on navigation
    */
    open var `navigation`: NavigationInfo?
    /*
    Information on paging
    */
    open var `paging`: PagingInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, name: String? = nil, usageType: String? = nil, text: String? = nil, contentUri: String? = nil, type: String? = nil, category: String? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.name = `name`
        self.usageType = `usageType`
        self.text = `text`
        self.contentUri = `contentUri`
        self.type = `type`
        self.category = `category`
        self.navigation = `navigation`
        self.paging = `paging`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `name` <- map["name"]
        `usageType` <- map["usageType"]
        `text` <- map["text"]
        `contentUri` <- map["contentUri"]
        `type` <- map["type"]
        `category` <- map["category"]
        `navigation` <- map["navigation"]
        `paging` <- map["paging"]
    }
}
