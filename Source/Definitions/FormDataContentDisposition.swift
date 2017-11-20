import Foundation
import ObjectMapper
open class FormDataContentDisposition: Mappable {
    /*
    */
    open var `type`: String?
    /*
    */
    open var `fileName`: String?
    /*
    */
    open var `creationDate`: String?
    /*
    */
    open var `modificationDate`: String?
    /*
    */
    open var `readDate`: String?
    /*
    */
    open var `size`: Int?
    /*
    */
    open var `name`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(type: String? = nil, fileName: String? = nil, creationDate: String? = nil, modificationDate: String? = nil, readDate: String? = nil, size: Int? = nil, name: String? = nil) {
        self.init()
        self.type = `type`
        self.fileName = `fileName`
        self.creationDate = `creationDate`
        self.modificationDate = `modificationDate`
        self.readDate = `readDate`
        self.size = `size`
        self.name = `name`
    }
    open func mapping(map: Map) {
        `type` <- map["type"]
        `fileName` <- map["fileName"]
        `creationDate` <- map["creationDate"]
        `modificationDate` <- map["modificationDate"]
        `readDate` <- map["readDate"]
        `size` <- map["size"]
        `name` <- map["name"]
    }
}
