import Foundation
import ObjectMapper
open class FormFieldResource: Mappable {
    /*
    */
    open var `name`: String?
    /*
    */
    open var `fieldType`: String?
    /*
    */
    open var `description`: String?
    /*
    */
    open var `maxLength`: Int?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(name: String? = nil, fieldType: String? = nil, description: String? = nil, maxLength: Int? = nil) {
        self.init()
        self.name = `name`
        self.fieldType = `fieldType`
        self.description = `description`
        self.maxLength = `maxLength`
    }
    open func mapping(map: Map) {
        `name` <- map["name"]
        `fieldType` <- map["fieldType"]
        `description` <- map["description"]
        `maxLength` <- map["maxLength"]
    }
}
