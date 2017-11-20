import Foundation
import ObjectMapper
open class SecretQuestionInfo: Mappable {
    /*
    Internal identifier of a question
    */
    open var `id`: String?
    /*
    Internal identifier of a question type
    */
    open var `questionType`: Int?
    /*
    Internal identifier of a question language
    */
    open var `languageId`: String?
    /*
    Text of a secret question shown to the end user
    */
    open var `questionText`: String?
    /*
    Specifies if the question is used during signup
    */
    open var `showInSignUp`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, questionType: Int? = nil, languageId: String? = nil, questionText: String? = nil, showInSignUp: Bool? = nil) {
        self.init()
        self.id = `id`
        self.questionType = `questionType`
        self.languageId = `languageId`
        self.questionText = `questionText`
        self.showInSignUp = `showInSignUp`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `questionType` <- map["questionType"]
        `languageId` <- map["languageId"]
        `questionText` <- map["questionText"]
        `showInSignUp` <- map["showInSignUp"]
    }
}
