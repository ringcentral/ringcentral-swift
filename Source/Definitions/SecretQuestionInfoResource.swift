import Foundation
import ObjectMapper
open class SecretQuestionInfoResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `id`: String?
    /*
    */
    open var `questionType`: Int?
    /*
    */
    open var `languageId`: Int?
    /*
    */
    open var `questionText`: String?
    /*
    */
    open var `showInSignUp`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, id: String? = nil, questionType: Int? = nil, languageId: Int? = nil, questionText: String? = nil, showInSignUp: Bool? = nil) {
        self.init()
        self.uri = `uri`
        self.id = `id`
        self.questionType = `questionType`
        self.languageId = `languageId`
        self.questionText = `questionText`
        self.showInSignUp = `showInSignUp`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- (map["id"], StringTransform())
        `questionType` <- map["questionType"]
        `languageId` <- map["languageId"]
        `questionText` <- map["questionText"]
        `showInSignUp` <- map["showInSignUp"]
    }
}
