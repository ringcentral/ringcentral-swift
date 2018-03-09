import Foundation
import ObjectMapper
open class IVRMenuActionsInfo: Mappable {
    /*
    Key. The following values are supported: numeric: '1' to '9' Star Hash NoInput
    */
    open var `input`: String?
    /*
    Internal identifier of an answering rule
    */
    open var `action`: String?
    /*
    For 'Connect' or 'Voicemail' actions only. Extension reference
    */
    open var `extension`: IVRMenuExtensionInfo?
    /*
    For 'Transfer' action only. PSTN number in E.164 format
    */
    open var `phoneNumber`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(input: String? = nil, action: String? = nil, extension: IVRMenuExtensionInfo? = nil, phoneNumber: String? = nil) {
        self.init()
        self.input = `input`
        self.action = `action`
        self.extension = `extension`
        self.phoneNumber = `phoneNumber`
    }
    open func mapping(map: Map) {
        `input` <- map["input"]
        `action` <- map["action"]
        `extension` <- map["extension"]
        `phoneNumber` <- map["phoneNumber"]
    }
}
