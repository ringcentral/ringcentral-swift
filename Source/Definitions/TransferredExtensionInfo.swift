import Foundation
import ObjectMapper
open class TransferredExtensionInfo: Mappable {
    /*
    */
    open var `extension`: ExtensionInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(extension: ExtensionInfo? = nil) {
        self.init()
        self.extension = `extension`
    }
    open func mapping(map: Map) {
        `extension` <- map["extension"]
    }
}
