import Foundation
import ObjectMapper
open class ExtensionUserCredentailsRequest: Mappable {
    /*
    User password of an extension
    */
    open var `password`: String?
    /*
    User pin of an extension
    */
    open var `ivrPin`: String?
    /*
    */
    open var `secretQuestion`: ExtensionSecretQuestionInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(password: String? = nil, ivrPin: String? = nil, secretQuestion: ExtensionSecretQuestionInfo? = nil) {
        self.init()
        self.password = `password`
        self.ivrPin = `ivrPin`
        self.secretQuestion = `secretQuestion`
    }
    open func mapping(map: Map) {
        `password` <- map["password"]
        `ivrPin` <- map["ivrPin"]
        `secretQuestion` <- map["secretQuestion"]
    }
}
