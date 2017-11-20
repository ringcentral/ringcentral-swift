import Foundation
import ObjectMapper
open class ExtensionUserCredentials: Mappable {
    /*
    Secret question of an extension user
    */
    open var `secretQuestion`: SecretQuestionInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(secretQuestion: SecretQuestionInfo? = nil) {
        self.init()
        self.secretQuestion = `secretQuestion`
    }
    open func mapping(map: Map) {
        `secretQuestion` <- map["secretQuestion"]
    }
}
