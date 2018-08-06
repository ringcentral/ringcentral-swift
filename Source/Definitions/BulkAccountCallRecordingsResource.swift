import Foundation
import ObjectMapper
open class BulkAccountCallRecordingsResource: Mappable {
    /*
    */
    open var `addedExtensions`: CallRecordingExtensionResource?
    /*
    */
    open var `updatedExtensions`: CallRecordingExtensionResource?
    /*
    */
    open var `removedExtensions`: CallRecordingExtensionResource?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(addedExtensions: CallRecordingExtensionResource? = nil, updatedExtensions: CallRecordingExtensionResource? = nil, removedExtensions: CallRecordingExtensionResource? = nil) {
        self.init()
        self.addedExtensions = `addedExtensions`
        self.updatedExtensions = `updatedExtensions`
        self.removedExtensions = `removedExtensions`
    }
    open func mapping(map: Map) {
        `addedExtensions` <- map["addedExtensions"]
        `updatedExtensions` <- map["updatedExtensions"]
        `removedExtensions` <- map["removedExtensions"]
    }
}
