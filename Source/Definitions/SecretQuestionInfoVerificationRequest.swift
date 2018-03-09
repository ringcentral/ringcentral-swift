import Foundation
import ObjectMapper
open class SecretQuestionInfoVerificationRequest: Mappable {
    /*
    Internal identifier of a secret question
    */
    open var `id`: String?
    /*
    Answer to a secret question
    */
    open var `answer`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, answer: String? = nil) {
        self.init()
        self.id = `id`
        self.answer = `answer`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `answer` <- map["answer"]
    }
}
