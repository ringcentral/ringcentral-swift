import Foundation
import ObjectMapper
import Alamofire
open class CustomDataPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "custom-data"
        }
    }
    // Update Custom Data by Key
    open func put(callback: @escaping (_ t: PutResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: PutResponse?, error) in
            callback(t, error)
        }
    }
    // Update Custom Data by Key
    open func put(parameters: Parameters, callback: @escaping (_ t: PutResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: PutResponse?, error) in
            callback(t, error)
        }
    }
    // Update Custom Data by Key
    open func put(parameters: PutParameters, callback: @escaping (_ t: PutResponse?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    open class PutParameters: Mappable {
        // Custom data access key. Optional. If specified, must match the custom key in the URL
        open var `id`: String?
        // Description of custom data. Mandatory for create, if there is no attachment specified. Maximum length is limited to 256 symbols
        open var `value`: String?
        public init() {
        }
        convenience public init(id: String? = nil, value: String? = nil) {
            self.init()
            self.id = `id`
            self.value = `value`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `id` <- (map["id"], StringTransform())
            `value` <- map["value"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
    open class PutResponse: Mappable {
        // Custom data access key
        open var `id`: String?
        // Link to the custom data
        open var `uri`: String?
        // Description of custom data
        open var `value`: String?
        // Time of the last change in custom data
        open var `lastModifiedTime`: String?
        // Attachment data: link and type
        open var `attachment`: AttachmentInfo?
        public init() {
        }
        convenience public init(id: String? = nil, uri: String? = nil, value: String? = nil, lastModifiedTime: String? = nil, attachment: AttachmentInfo? = nil) {
            self.init()
            self.id = `id`
            self.uri = `uri`
            self.value = `value`
            self.lastModifiedTime = `lastModifiedTime`
            self.attachment = `attachment`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `id` <- (map["id"], StringTransform())
            `uri` <- map["uri"]
            `value` <- map["value"]
            `lastModifiedTime` <- map["lastModifiedTime"]
            `attachment` <- map["attachment"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
}
