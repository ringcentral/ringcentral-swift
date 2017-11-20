import Foundation
import ObjectMapper
open class ExtensionSecretQuestionInfo: Mappable {
    /*
    Internal identifier of a secret question
    */
    open var `id`: String?
    /*
    Link to a secret question resource
    */
    open var `uri`: String?
    /*
    Answer to a secret question
    */
    open var `answer`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, answer: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.answer = `answer`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `answer` <- map["answer"]
    }
}
