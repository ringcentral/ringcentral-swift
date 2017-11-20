import Foundation
import ObjectMapper
open class IVRMenuInfo: Mappable {
    /*
    Internal identifier of an IVR Menu extension
    */
    open var `id`: String?
    /*
    Link to an IVR Menu extension resource
    */
    open var `uri`: String?
    /*
    First name of an IVR Menu user
    */
    open var `name`: String?
    /*
    Number of an IVR Menu extension
    */
    open var `extensionNumber`: String?
    /*
    Prompt metadata
    */
    open var `prompt`: IVRMenuPromptInfo?
    /*
    Keys handling settings
    */
    open var `actions`: [IVRMenuActionsInfo]?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, name: String? = nil, extensionNumber: String? = nil, prompt: IVRMenuPromptInfo? = nil, actions: [IVRMenuActionsInfo]? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.name = `name`
        self.extensionNumber = `extensionNumber`
        self.prompt = `prompt`
        self.actions = `actions`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `name` <- map["name"]
        `extensionNumber` <- map["extensionNumber"]
        `prompt` <- map["prompt"]
        `actions` <- map["actions"]
    }
}
